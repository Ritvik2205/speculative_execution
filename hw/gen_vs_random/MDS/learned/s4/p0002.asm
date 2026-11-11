.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
xor al, 8
xor bl, -61
xor bl, -27
or dil, -76
and bx, 3
test sil, 41
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or al, cl
test eax, 1729060510
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
