.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
add al, -5 # instrumentation
adc dl, al
or bl, cl
and al, dil
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
