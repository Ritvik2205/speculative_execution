.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
or cl, cl
or dl, bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
add al, -109
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
or di, di
add al, -62 # instrumentation
setnb dl
neg cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, ebx
cmp ax, cx
setnb cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
bt bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
