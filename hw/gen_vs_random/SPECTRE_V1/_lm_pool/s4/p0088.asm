.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
neg rbx
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, cl
jmp .bb_0.2
.bb_0.2:
bt ecx, 204
sbb rax, 786640702
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
