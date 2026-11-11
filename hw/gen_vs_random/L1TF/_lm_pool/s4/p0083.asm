.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
add bl, 68
xor bl, 38
xor bl, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
sub al, -47
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
test dil, -126
sub bl, al
cmp dil, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
