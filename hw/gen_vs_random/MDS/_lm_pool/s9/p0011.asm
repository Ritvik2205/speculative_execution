.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
btr si, bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
or edx, ecx
or cl, -36
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
bt si, bx
or rsi, 91
jmp .bb_0.4
.bb_0.4:
test rax, 1978892575
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
