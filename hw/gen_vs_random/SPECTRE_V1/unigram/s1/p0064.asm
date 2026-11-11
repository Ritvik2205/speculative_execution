.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
add rdx, 95
adc rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
imul eax
add bl, 70
jns .bb_0.1
jmp .exit_0
.bb_0.1:
inc cl
bt ebx, 45
bts dx, 207
dec cx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
add al, 41 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
cmp al, 77
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
