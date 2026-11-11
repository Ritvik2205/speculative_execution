.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
cmp rbx, 90
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sub sil, cl
sbb rcx, 86
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 46
and dil, dl
btc si, 32
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
