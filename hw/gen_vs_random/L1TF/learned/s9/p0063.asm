.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 4
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
xchg rcx, rsi
add ax, 1313
add al, dil
btc ecx, 23
add al, 74
and dil, -22
sub al, -47
or bl, 114
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
