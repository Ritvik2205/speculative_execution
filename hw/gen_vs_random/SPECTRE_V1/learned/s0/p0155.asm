.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp bl, dl
lea rsi, qword ptr [rcx + rax + 5]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
or al, 19
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
mov al, -28
mov bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
