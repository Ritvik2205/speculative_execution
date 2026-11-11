.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo si, bx
xor al, -4
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor al, -19
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
or al, -61
jmp .bb_0.2
.bb_0.2:
or dil, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rbx, 65
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
