.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
xor al, 102
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -19255
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmovnle eax, edx
xor al, 29
mul rbx
lea esi, qword ptr [rdx + rdi]
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
sbb dl, -99
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul sil
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
xchg cx, ax
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 16
cmovnl rdi, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 29
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 86
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 2
add rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
