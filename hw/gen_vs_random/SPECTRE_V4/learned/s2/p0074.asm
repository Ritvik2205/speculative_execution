.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -818909344
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
sub ax, 24441
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
sub ax, dx
imul edx, esi, 38
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp al, 114
bt cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmovo dx, si
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and al, -127
and dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test rdi, -1876639003
cmp dx, si
or al, 96
cmp ax, 23131
movzx ecx, al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
xor al, 29
movzx eax, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovnz eax, edx
add ebx, edx
and al, -36
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and ax, 35
and al, -36
test al, 66
cmp bl, 13
cmp ax, -15409
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and dl, dil
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
