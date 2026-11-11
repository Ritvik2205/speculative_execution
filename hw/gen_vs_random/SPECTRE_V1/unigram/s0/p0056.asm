.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
test dil, -116
setbe dl
xor rsi, 98
cmp al, al
seto cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 64
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 53
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
add dl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
sub dil, -32
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 41
xor al, -19
sub sil, dil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
add al, 110 # instrumentation
cmovb rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
