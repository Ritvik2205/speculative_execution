.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -90
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
inc cx
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
add cl, 122 # instrumentation
cmovz rcx, rdi
test ax, -5170
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
sbb bl, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
sub al, 50
add sil, -10 # instrumentation
cmovnbe esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
xor si, dx
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 42
imul si, ax
test bx, ax
add dl, al
or ecx, 61
test bx, -1599
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 19
cmp di, si
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
sub dil, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
xor dil, 86
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
and dl, bl
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 76
mov rbx, 9101099553822202722
add dil, dil
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 48
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 72
not di
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 85
cmovnb bx, bx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edi
cmovs rdx, rsi
cmovp rax, rbx
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
adc ebx, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
