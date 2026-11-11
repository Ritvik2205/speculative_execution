.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add al, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
sub cl, dil
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cbw
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 16
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
setnz dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
setbe al
lea rcx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
