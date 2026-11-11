.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 48
test sil, 29
sub al, 26
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
xor dil, -42
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or ecx, 97
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -126
and cl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
