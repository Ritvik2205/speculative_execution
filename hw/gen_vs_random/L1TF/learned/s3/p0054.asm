.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 25
or al, -57
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
xor dl, 64
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 8
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and bx, 8
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
