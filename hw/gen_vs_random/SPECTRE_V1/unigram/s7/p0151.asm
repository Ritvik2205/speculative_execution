.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, 47
inc rdi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
add al, 10
test dil, bl
cmp dl, 119
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
add dl, 47
or rax, -1571963467
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc eax, eax
test dl, -7
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
imul cl
not edx
lea rdx, qword ptr [rbx + rsi + 39]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
