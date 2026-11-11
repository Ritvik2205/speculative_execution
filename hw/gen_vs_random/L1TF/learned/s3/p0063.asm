.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 48
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 80
xor cl, 89
cmovnle rcx, rdi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
or bl, cl
jmp .bb_0.2
.bb_0.2:
add sil, 42 # instrumentation
lea eax, qword ptr [rsi + rax]
lea rbx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
