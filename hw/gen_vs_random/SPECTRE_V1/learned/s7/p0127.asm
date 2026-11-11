.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and bl, 87
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 100
test cl, -62
and dil, -114
jmp .bb_0.1
.bb_0.1:
test al, 34
and al, -54
and bl, -65
sbb ebx, 17
sbb dl, al
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
