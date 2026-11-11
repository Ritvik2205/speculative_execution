.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
bt si, 72
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or dl, cl
setns dl
cmovnbe cx, si
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
xor cx, si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
mul dil
test cl, -49
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
mov al, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
