.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
or dl, dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
sbb dil, 58
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
jmp .bb_0.1
.bb_0.1:
xor cl, sil
cmovp esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
lea edi, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
not rdi
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
cmovz rbx, rcx
add dil, 38
lea di, qword ptr [rcx + rdx + 31]
and bl, 125
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 82
btc rsi, 61
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovnz edi, ecx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 11
btc ax, si
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
imul cl
add dl, -114 # instrumentation
cmovl si, bx
cmovnle rbx, rbx
movzx rdx, cx
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
sbb al, cl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
adc bl, sil
mov rcx, 93
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
