.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea cx, qword ptr [rdx + rdi]
cmovnb rdi, rsi
cmp rsi, 53
sbb al, -112
cmovle dx, di
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sub dil, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and dl, cl
lea ecx, qword ptr [rbx + rcx + 13259]
add al, bl
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
lea ebx, qword ptr [rax + rax + 18654]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
