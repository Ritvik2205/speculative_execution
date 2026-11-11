.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -84 # instrumentation
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
bt rcx, 189
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
movsx ebx, cx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
or rdx, 1
cmovbe rsi, rcx
btr si, dx
btr bx, 42
adc bl, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
imul bl
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
mul al
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmovnz eax, edi
cmovnp eax, edi
movsx cx, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
sub al, 55
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -3
btc rax, 72
and rdi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
cmovnz rcx, rcx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
cmovbe esi, esi
and cl, -118
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
adc bl, 79
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and dil, -23
xor al, -120
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
cmp dl, al
cmp cl, 59
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
mov ebx, edi
sub al, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
