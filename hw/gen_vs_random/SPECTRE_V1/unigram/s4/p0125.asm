.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -94 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 28
adc bl, dl
mul al
add bl, 126 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdi + rcx + 51483]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 60
add bl, -41 # instrumentation
xchg dl, dil
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 70
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], si
xor cx, 95
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
add cl, -26 # instrumentation
cmovnp bx, si
add al, 112 # instrumentation
setl dil
or cl, bl
bt edx, ebx
add al, -125 # instrumentation
cmovb eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
