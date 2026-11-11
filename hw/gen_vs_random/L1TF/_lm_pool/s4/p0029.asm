.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rcx]
sub si, 83
add ax, -24961
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
imul rbx
xor cl, dl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 39
xor bx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
