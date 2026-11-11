.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
inc cl
or ecx, 17
cmovnz ecx, edi
xor ax, -6064
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
xchg edx, esi
inc sil
test cl, al
cmp bl, dl
or dl, 71
sbb al, -43
or al, -88
adc sil, 88
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
sbb cl, cl
adc cl, -54
and bl, 76
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
adc eax, 1019803307
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
sub dl, -16
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor eax, -1772786275
xor ax, -29507
mov dl, dil
not dil
mov dil, bl
adc dil, sil
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sub cl, -119
add bl, al
xor al, bl
or sil, dil
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
