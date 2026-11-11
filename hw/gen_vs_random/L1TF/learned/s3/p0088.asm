.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
test al, -82
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
or cl, dil
test edx, 1891691791
jmp .bb_0.1
.bb_0.1:
mov dl, dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
