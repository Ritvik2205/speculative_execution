.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edi
xor al, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
sbb al, -14
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
xor cl, dl
bt ecx, edi
sbb di, -105
and al, -87
bt di, si
cmp sil, -100
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
cmp dl, -82
add cl, dil
sub dl, -16
dec dl
or sil, al
sub ax, bx
xor rcx, 112
cmp edi, 3
xor cl, -73
test al, 27
and cl, dil
sub edi, 2
adc dl, bl
or al, al
mov al, 7
cmp al, -1
xor al, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and ax, -23308
and dl, -104
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
