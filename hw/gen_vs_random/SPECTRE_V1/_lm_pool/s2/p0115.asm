.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
sub dl, bl
sub al, dl
xor bl, sil
sub cl, -21
sbb bl, dl
btr rdi, 18
and rax, -273199823
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
