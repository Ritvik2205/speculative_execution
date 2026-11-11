.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
bswap eax
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
xor dil, -37
jp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx eax, bl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 99
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
sub ecx, 88
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
add al, -53 # instrumentation
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
cmovp dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
