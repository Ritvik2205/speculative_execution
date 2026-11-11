.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
or dl, bl
or cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and ax, 2806
add al, -62 # instrumentation
setnb dl
add al, -13
or di, di
neg cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
bt bx, bx
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
xor ecx, ebx
cmp ax, cx
setnb cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
