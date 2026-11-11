.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 100
setno dl
cwde
or cl, -78
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
mov cx, si
and dil, -82
sbb rcx, 36
setp al
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rax
test edx, 1891691791
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
