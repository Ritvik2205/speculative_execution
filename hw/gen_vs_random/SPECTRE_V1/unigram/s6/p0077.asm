.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdi + rcx + 68]
add rdi, 53
add bl, -114 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
and sil, al
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
bt bx, 44
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 31
test rbx, rcx
add ebx, -47
xor al, bl
cmovp dx, dx
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
