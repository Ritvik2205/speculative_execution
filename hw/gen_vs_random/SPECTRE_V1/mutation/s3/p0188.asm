.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -62 # instrumentation
setnb dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and ax, -22629
or di, di
or dl, bl
add al, 3
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
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
btr rdx, rax
add cl, -123 # instrumentation
cmovnp rdi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test dl, 113
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
