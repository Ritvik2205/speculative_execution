.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and al, -68
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dil, cl
bt ebx, esi
jmp .bb_0.2
.bb_0.2:
add dil, 65 # instrumentation
cmovo rdi, rdx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
