.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 7
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
neg rcx
add al, 74
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
cmovl eax, edx
lea ax, qword ptr [rbx]
add dil, dl
lea rax, qword ptr [rsi + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
or rcx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
