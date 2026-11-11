.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb edi, edx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
sbb dl, 127
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, al
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
sub dl, bl
jp .bb_0.4
jmp .exit_0
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
