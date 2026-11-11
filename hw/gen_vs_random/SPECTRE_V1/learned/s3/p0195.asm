.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
mov dl, cl
dec bl
adc bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
