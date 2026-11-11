.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 117
inc rdi
btr bx, dx
or cx, 21
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and cx, 127
inc rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
movzx bx, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 47
setns dil
or ax, 11821
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
add al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
cmovb ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
