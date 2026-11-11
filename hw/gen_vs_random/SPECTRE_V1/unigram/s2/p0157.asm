.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
imul dx, bx, 21
add dil, cl
adc sil, -77
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
test esi, 57
add cx, di
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
add rbx, 37
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
