.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, ecx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
or rbx, 43
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
cmp rcx, rdi
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdx + rax + 81]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 60
cmp ax, 7046
xor ebx, edx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
add bl, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
lea rdi, qword ptr [rax + rsi]
imul rdi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
