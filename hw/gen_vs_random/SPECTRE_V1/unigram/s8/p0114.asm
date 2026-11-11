.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
add bx, -65
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 25
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setle al
add al, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rcx]
add al, 19 # instrumentation
setnz dl
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
add dil, -75
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
