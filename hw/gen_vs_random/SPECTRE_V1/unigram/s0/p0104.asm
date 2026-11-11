.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
sbb ebx, 5
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl rcx, rdx
mov dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
xor rsi, 73
add dl, 53
cmovnp cx, si
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
add bl, 66
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
or bl, 72
sbb cl, -122
lea rdi, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
