.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 52
or bx, 80
imul rcx, rdi
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
neg rdx
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
test dl, 26
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setnbe bl
mov dl, cl
lea cx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 89
cmp rcx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
