.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, di
cmovb esi, esi
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
not si
sbb bl, bl
cmovnle di, bx
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
movzx ax, dl
test dl, al
test esi, 17
cmovnbe rsi, rbx
mov rdx, rsi
test rbx, 29
imul rsi
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
movzx dx, cl
cmovb edx, edx
dec ax
xor al, 69
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and bl, sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
sbb ebx, esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
sbb dx, bx
cmovo eax, esi
sbb rsi, -115
xor rdx, rbx
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
cmovnl rcx, rax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and bl, 26
mov rdi, rsi
add rbx, rsi
bt ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
xor di, -43
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
