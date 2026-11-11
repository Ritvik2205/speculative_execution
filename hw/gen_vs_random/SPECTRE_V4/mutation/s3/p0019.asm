.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
adc eax, -3570960
and cl, cl
add rsi, -100
adc eax, -983562873
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovz rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
sbb rbx, 20
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
bts cx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
adc sil, cl
cmovle rbx, rax
xor dl, -66
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
xor ax, -17712
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
adc cl, -4
sub al, 86
or eax, -646827727
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
adc dil, -17
mul cx
adc eax, -3570960
mul dl
add bl, dl
add dil, -61
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
