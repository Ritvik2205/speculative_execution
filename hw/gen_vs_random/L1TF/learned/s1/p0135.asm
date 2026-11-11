.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
cmp bl, 123
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor cl, sil
lea rbx, qword ptr [rdi]
xor al, 16
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
sub edx, -33
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
