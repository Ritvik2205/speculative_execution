.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax] 
xor cl, 88 
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx] 
xor al, -40 
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi] 
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx 
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx 
and esi, ebx 
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi] 
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx 
cmovb di, cx 
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi] 
cmovp rdx, rcx 
imul ax 
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx] 
cmovle esi, eax 
sbb eax, 40509622 
sub cl, -32 
movzx edx, di 
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi] 
bts bx, 102 
add dl, -91 # instrumentation
cmovl rbx, rcx 
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118 
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4 
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi] 
cmp al, al 
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91 
sub ax, 8246 
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi] 
sub rsi, rdx 
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3 
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1 
mov esi, 1695134926 
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi] 
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax] 
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25 
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx] 
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx 
neg bx 
not esi 
xor ax, -17712 
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx 
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx 
mov ebx, 817819255 
sbb al, cl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
