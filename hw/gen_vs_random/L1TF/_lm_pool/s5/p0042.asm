.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
test cl, 58
sub al, -3
inc dil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 44
jmp .bb_0.4
.bb_0.4:
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
