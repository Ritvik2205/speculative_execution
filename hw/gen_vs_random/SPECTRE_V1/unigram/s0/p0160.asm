.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
add al, -14 # instrumentation
lea di, qword ptr [rsi + rax]
cmovno rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
setnp dil
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test dil, -116
sub bl, al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
cdq
test rdx, 1657596343
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
