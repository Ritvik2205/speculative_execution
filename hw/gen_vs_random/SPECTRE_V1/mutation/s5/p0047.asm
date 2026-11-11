.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -62 # instrumentation
setnb dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and ax, 23118
or di, di
or dl, bl
add al, -72
or cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
neg cl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
setnb cl
bt bx, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor ecx, ebx
cmp ax, cx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
lea ebx, qword ptr [rbx + rdi + 52277]
add dl, 47
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
btc bx, 118
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
