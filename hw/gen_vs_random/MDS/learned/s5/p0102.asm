.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
cmovns bx, si
bts rsi, rcx
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test eax, 424329527
xor cl, dil
test dl, al
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and cl, cl
xor al, -89
or sil, -49
or al, -17
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
