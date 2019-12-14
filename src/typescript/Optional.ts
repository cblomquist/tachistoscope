class Optional<T> {
    private value: T | undefined
    private assigned: boolean

    constructor(value: T) {
        if (value) {
            this.value = value
            this.assigned = true
        } else {
            this.value = undefined
            this.assigned = false
        }
    }

    hasValue(): Boolean {
        return this.assigned
    }

    getValue(): T {
        if (this.assigned) {
            return <T>this.value
        } else {
            throw new Error()
        }
    }
}