.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts bx, 17
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
lea rbx, qword ptr [rsi + rax + 84]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdi
lea rsi, qword ptr [rcx]
sbb al, bl
test al, 48
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
