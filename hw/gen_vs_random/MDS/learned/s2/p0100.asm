.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rcx, 107
and dil, dil
and bl, bl
test sil, al
and cl, al
xor bl, -102
and dil, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
xor bl, cl
xor di, -83
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
