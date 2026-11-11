.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
imul ax
not esi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
sub cl, -51
sbb eax, -747044528
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub ax, 6579
xor ax, -6064
cmovb di, cx
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
mov esi, 1695134926
cmovle esi, eax
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
movzx edx, di
neg bx
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
mov ebx, 817819255
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
add dl, -91 # instrumentation
cmovl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
sub rsi, rdx
xor al, -60
cmovp rdx, rcx
bts bx, 42
xor cl, -73
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmp al, al
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and esi, ebx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
