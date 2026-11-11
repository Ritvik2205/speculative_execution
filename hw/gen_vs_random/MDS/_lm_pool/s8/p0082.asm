.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
test rax, -708244380
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and cl, 79
or cl, 7
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or al, -17
or bl, sil
test bl, cl
or ax, -23697
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 34
xor cl, bl
or rcx, -17
test al, dil
and cx, -2
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
or ax, -14271
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
