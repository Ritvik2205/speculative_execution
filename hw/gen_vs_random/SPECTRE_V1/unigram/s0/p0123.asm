.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb eax, 97
xor al, 86
mul cl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
xchg rdx, rdi
add dl, 6 # instrumentation
adc rbx, 31
cmovp dx, cx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
mul rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, 51
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
