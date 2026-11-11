.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 88
xor dil, sil
not cx
neg eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
test esi, 69
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
test dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
add di, -74
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
add dil, dl
cmovo rax, rbx
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
dec ebx
and rdi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 63
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
cmovnbe esi, edi
xor dl, 46
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 88
and dil, 96
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 42
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 40
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmp dil, -124
test eax, -544019457
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
add dl, 72 # instrumentation
cmovle dx, ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 6
cmovp bx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 36
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
