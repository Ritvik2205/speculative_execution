.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 24
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
