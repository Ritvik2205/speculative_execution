.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and ax, -22629
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
add al, -62 # instrumentation
setnb dl
or di, di
or cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
add al, 3
neg cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setnb cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmp ax, cx
bt bx, bx
xor ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
