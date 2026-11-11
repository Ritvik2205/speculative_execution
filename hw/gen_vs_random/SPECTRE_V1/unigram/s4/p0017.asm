.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, ax
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
dec bl
add eax, 1518653812
lea rbx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
test dx, 30
sub ebx, esi
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rsi, 5
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 25
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
