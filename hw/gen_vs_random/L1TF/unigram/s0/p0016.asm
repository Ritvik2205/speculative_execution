.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 20
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
adc rbx, 6
add bl, -103 # instrumentation
cmovnz bx, di
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
xor bx, 34
cmp dl, cl
mul rdi
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and al, -68
inc sil
sbb al, 92
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdx
sbb al, -14
adc sil, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
