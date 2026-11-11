.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ax, ax
and sil, -49
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovnbe rax, rbx
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
cmovle edx, ebx
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, -85
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
mov rdi, 22
add rsi, rbx
xor al, 102
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
or cl, cl
sub dl, 43
xor sil, bl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add bx, bx
add sil, sil
sub rdi, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 16
test esi, ecx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 46
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
mov di, 89
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
test dil, 35
sub cl, cl
sub al, al
imul bx
xchg rbx, rdi
cmovb rdx, rdi
cmovb esi, edx
neg ebx
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
cmovz rbx, rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
sbb cl, 19
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 62
test ebx, -595096626
test ax, -5170
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
