.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -23 # instrumentation
cmovl dx, di
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmp edx, eax
cmovs di, cx
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 86
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 40 # instrumentation
btc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
setnl sil
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
add dil, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
add dl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
