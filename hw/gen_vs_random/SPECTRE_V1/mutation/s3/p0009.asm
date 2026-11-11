.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and ax, 23118
neg cl
add al, -47
or cl, cl
or di, di
add al, -62 # instrumentation
setnb dl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmp ax, cx
xor ecx, ebx
setnb cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
bt bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
