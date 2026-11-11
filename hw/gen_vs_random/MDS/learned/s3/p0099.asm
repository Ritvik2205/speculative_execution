.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor bl, 2
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
xor edi, 38
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
bt cx, 95
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 29
xor cl, 122
movzx rdx, si
cmovnl rsi, rdx
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 62
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
mov bx, 36
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc al, dil
test ax, si
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
cmovle rdx, rbx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb eax, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
