.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
mul rcx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -49
sub al, 9
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xchg ecx, ebx
add al, sil
jmp .bb_0.2
.bb_0.2:
or bl, sil
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
xor cl, al
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
