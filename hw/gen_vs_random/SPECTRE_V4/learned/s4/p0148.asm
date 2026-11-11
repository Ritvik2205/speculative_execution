.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
xor bl, bl
cmp sil, dil
cmp bl, dl
cmp esi, 123
jmp .bb_0.1
.bb_0.1:
or al, -88
sub al, cl
cmovno edx, edi
cmp cl, -105
and al, 5
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test ax, 19171
or ax, 11396
and sil, -84
xchg eax, ecx
add cl, dl
sub di, 9
adc al, dl
xor al, -60
sbb al, 95
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
sub rbx, 101
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
test dl, sil
test dil, cl
cmp al, -122
xor dil, dl
xor al, dl
or rax, -387680856
xor al, dil
or sil, -47
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
