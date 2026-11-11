.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
cmp dil, sil
add cl, al
sub rax, 714283065
sbb bl, dil
and dl, dl
xchg rcx, rax
sub al, 11
test eax, 1947430392
cmp al, cl
test eax, 1340292467
or cx, -74
test al, 27
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
xor dil, bl
or dil, dil
sbb al, -3
add cl, dil
xor cl, dl
and al, dil
cmovnb esi, edi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and al, -124
and rbx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rbx]
or dil, bl
sub dil, -28
sub cl, dil
cmp sil, 113
adc al, 116
or rcx, 28
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
xor sil, al
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc al, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
