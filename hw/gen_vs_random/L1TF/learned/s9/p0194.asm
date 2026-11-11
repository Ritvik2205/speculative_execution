.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
or al, -5
jmp .bb_0.1
.bb_0.1:
add sil, -61
cmovnz rbx, rdx
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test al, -84
xchg al, dl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 43
jmp .bb_0.3
.bb_0.3:
or al, bl
sbb dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
