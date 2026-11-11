.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47 # instrumentation
cmovnle bx, dx
xchg rcx, rcx
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
add dil, cl
cmovnbe dx, ax
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 33
xor edi, 127
bt ebx, edx
mov sil, al
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
and dil, -120
and cl, -128
cmp bl, cl
sub dx, di
add al, 19
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 62
xor ax, -17712
and rcx, 11
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
xor di, 43
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edi
xchg cl, bl
btr si, bx
or al, dil
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and cx, -117
cmovs dx, ax
mul ax
and edi, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
bswap rdi
cmovs bx, dx
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
or sil, -47
imul sil
mov dl, dil
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
and dil, 8
or rbx, 69
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmovle rsi, rdi
mul ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
