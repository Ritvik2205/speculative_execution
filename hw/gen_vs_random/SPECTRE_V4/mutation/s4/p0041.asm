.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sbb bx, dx
and ax, -14374
bt rcx, 236
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cmp edx, edx
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
adc dil, -48
xor bl, al
btr di, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
xor cl, cl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
test ecx, -907816607
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and bl, sil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmovbe cx, si
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
add al, bl
cmp edi, edx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add cl, 7 # instrumentation
adc bx, 70
xchg edi, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
cmovle si, di
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
xor eax, -48271836
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
xor rax, rsi
cmp dil, -29
adc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
