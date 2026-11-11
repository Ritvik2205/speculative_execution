.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
or cx, cx
sub dil, -70
or al, -5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, al
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
