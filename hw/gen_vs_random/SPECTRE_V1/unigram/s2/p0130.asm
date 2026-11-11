.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
or bl, 56
lea ebx, qword ptr [rcx]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
lea cx, qword ptr [rcx + rdx]
lea cx, qword ptr [rsi + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
xchg dil, bl
and cx, 41
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 73 # instrumentation
mov rbx, 8
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
add bl, dil
cmp cl, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
