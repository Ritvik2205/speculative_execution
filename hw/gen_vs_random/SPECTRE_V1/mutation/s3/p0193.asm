.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -62 # instrumentation
setnb dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
or dl, bl
neg cl
add al, -47
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
or di, di
or cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and ax, 2806
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
cmp ax, cx
bt bx, bx
setnb cl
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
