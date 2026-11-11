.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, 121
cmovp rdi, rax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
sub si, cx
not dl
cmovnle rcx, rbx
mul cl
test bx, cx
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
imul al
and ecx, 71
test sil, al
adc esi, 36
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
bts bx, 42
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
xor edi, ebx
bts esi, 107
or bx, -33
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
btr bx, di
movzx ecx, bl
xor di, 25
neg rbx
mov rsi, rbx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
mov bx, 27738
and di, -65
imul eax
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
not edi
cmovnle eax, edi
mov al, sil
add cx, 24
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdx
btr rdi, 145
imul esi, edx, 1
sub sil, dl
and ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
