.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 95
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
xchg rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
seto bl
test al, 42
cmp rbx, 27
lea rcx, qword ptr [rsi + rdx + 72]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
