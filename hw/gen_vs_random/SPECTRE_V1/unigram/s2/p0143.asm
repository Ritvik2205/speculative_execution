.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
lea bx, qword ptr [rcx + rdi + 98]
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
lea di, qword ptr [rcx + rax + 74]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
xor dil, dil
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
cmovbe rax, rcx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
or sil, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add al, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
bswap rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
