.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -53
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
add cl, al
mov al, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 67
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
sbb rax, 59
sub al, 11
or cl, dl
test sil, 1
dec dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub dl, dil
and dil, 8
add cl, -9
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and dil, sil
sub al, cl
adc dil, dil
cmovnb edi, ecx
cmp al, -106
sub dil, 35
or cx, -74
xor sil, dil
or eax, 1001462340
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
test dl, -125
and al, 59
adc sil, dl
mov dil, cl
sub esi, -69
sbb bl, 121
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
