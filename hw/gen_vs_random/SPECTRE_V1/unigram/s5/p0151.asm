.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
lea di, qword ptr [rdx + rdi + 99]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 47
xor al, -19
add bl, -95
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and bx, -118
sbb bl, bl
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
xchg ebx, edi
test rcx, rbx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
xor cl, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
