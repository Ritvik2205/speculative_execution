.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rcx]
or al, -57
xor sil, 64
test dl, -37
jmp .bb_0.1
.bb_0.1:
bt rdi, 18
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
sub dil, -70
not dl
xor di, 57
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
