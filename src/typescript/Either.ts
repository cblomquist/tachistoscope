export class Either<TL, TR> {
    private readonly value: TL | TR
    private readonly left: boolean

    private constructor(value: TL | TR, left: boolean) {
        this.value = value
        this.left = left
    }

    isLeft(): boolean {
        return this.left
    }

    getLeft(): TL {
        if (!this.isLeft()) throw new Error()
        return <TL>this.value
    }

    isRight(): boolean {
        return !this.left
    }

    getRight(): TR {
        if (!this.isRight()) throw new Error()
        return <TR>this.value
    }

    static Left<TL, TR>(value: TL) {
        return new Either<TL, TR>(value, true)
    }

    static Right<TL, TR>(value: TR) {
        return new Either<TL, TR>(value, false)
    }
}