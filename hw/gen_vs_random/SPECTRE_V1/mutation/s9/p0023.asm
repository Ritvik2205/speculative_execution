.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and ax, 21910
neg cl
or dl, bl
add al, 18
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
or di, di
or cl, cl
add al, -62 # instrumentation
setnb dl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
bt bx, bx
setnb cl
xor ecx, ebx
cmp ax, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
