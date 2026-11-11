.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1880179600
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 81
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 49
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 9
and si, 68
cmovz ebx, ecx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 86
add al, 56 # instrumentation
cmovle rbx, rax
sbb cl, 19
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 56
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
cmp dx, 77
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 50
movzx eax, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
cmovnl rax, rbx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 110
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
test edx, 573099753
xchg rbx, rcx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
cmovnz edx, edi
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
test al, al
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
imul dx
sub esi, 57
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 86
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 54
add bl, -18 # instrumentation
mov rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
