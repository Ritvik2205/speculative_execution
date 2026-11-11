.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
bts eax, 59
sbb al, 70
test sil, 68
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
sub dl, 107
or bl, sil
xor al, bl
or bl, cl
xchg ebx, edx
sbb dl, -62
test bl, -29
add al, 19
dec bl
bts eax, 22
mov al, cl
cmp dil, cl
add al, -99
cmp al, 105
and dl, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xchg ebx, eax
sub dl, cl
add al, dl
adc al, -70
sbb cl, 45
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
