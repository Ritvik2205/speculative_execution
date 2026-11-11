.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 111
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
adc al, 116
cmp bl, al
adc cl, -54
add sil, dl
test al, 72
xor al, -31
test al, 57
cmovnp di, cx
cmp dil, al
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
cmp cl, 59
sbb rax, 475459025
cmp al, cl
cmp bl, cl
add cl, dil
cmp al, cl
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
