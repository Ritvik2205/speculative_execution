.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor sil, dil
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
test esi, edx
xor cl, 89
mov esi, -1776760885
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
jmp .bb_0.1
.bb_0.1:
test dl, 84
lea ax, qword ptr [rdx + rcx]
add dl, -57 # instrumentation
setz cl
and al, -68
add dil, 27 # instrumentation
setnle dil
lea bx, qword ptr [rbx + rsi + 22]
or ax, -18131
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
