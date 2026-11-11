.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
add al, -82
dec bl
mov dil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
sub dil, 35
add al, -6
adc al, sil
xor di, 50
cmp al, -106
not dl
sbb al, 66
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sbb bl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
add dl, 109
cmp dil, al
and al, 92
and al, sil
sub al, 86
adc dil, cl
sbb sil, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sbb dil, 96
cmp al, dil
cmovnb esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
