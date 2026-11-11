.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdx, 58
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
add dl, dil
test si, 20
mov rcx, 4219775168754920203
xchg di, cx
add cx, 76
xchg eax, edx
cmovnb edx, esi
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 59
cmovz ecx, edi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmovns di, di
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 20
xor bx, dx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
test sil, al
xchg ax, cx
cmovle rax, rcx
bt edx, ebx
and al, dl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 23
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
imul rdi
cmp cl, 69
and rbx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
bt ax, 47
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
mov rax, rsi
movsx esi, dl
test al, bl
or bl, 63
add ecx, edx
cmovnle bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 2
sub ax, di
xor rsi, -3
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
movzx rdx, di
add ecx, 29
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
