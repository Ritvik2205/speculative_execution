.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovnl ax, di
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xor al, -28
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or cl, 10
bt rcx, rcx
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
cmovnle ax, si
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
cmovle edi, ebx
cmovo rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
bt rcx, rax
cmovo cx, di
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
or dl, al
setnz dil
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 70
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 10
test al, -59
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
movsx rsi, bx
and dil, 22
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 34
xor dil, dil
or eax, -1827868798
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
