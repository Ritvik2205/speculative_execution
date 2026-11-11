.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
or al, bl
cmovnz rsi, rdi
sbb al, cl
xor dl, 64
jmp .bb_0.1
.bb_0.1:
setno al
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
lea eax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
