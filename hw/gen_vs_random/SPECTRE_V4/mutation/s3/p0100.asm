.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
mov dx, di
cmovz esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
cmovle rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add al, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sbb cl, 127
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
neg bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and dl, al
btr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test esi, -222751961
bt cx, dx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
or sil, -47
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
adc dil, 109
mul cx
adc eax, -3570960
mul dl
add bl, dl
add dil, -84
sbb cl, cl
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
cmovle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
