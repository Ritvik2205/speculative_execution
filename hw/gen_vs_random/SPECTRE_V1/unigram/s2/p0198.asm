.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
adc rsi, 79
setno bl
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or di, 2
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bts rax, 140
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 73
imul bl
add cl, -42 # instrumentation
lea edx, qword ptr [rcx]
lea di, qword ptr [rdx + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 51
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
