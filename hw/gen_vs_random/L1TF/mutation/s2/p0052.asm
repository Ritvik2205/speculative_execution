.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, 57846954
bt ebx, edi
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
or bx, 90
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
lea ecx, qword ptr [rdi + rax]
setle dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
bt si, cx
lea rsi, qword ptr [rax + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
lea eax, qword ptr [rdi + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
mov rax, rsi
and rax, 1163013815
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
sub ax, -3178
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
