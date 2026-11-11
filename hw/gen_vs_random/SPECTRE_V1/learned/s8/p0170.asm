.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
sbb bl, -41
sbb cl, sil
cmp cl, dil
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
xor esi, 106
and dil, dl
test al, -75
inc edx
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
and al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
