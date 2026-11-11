.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 97 # instrumentation
cmovnb ax, si
inc sil
sets al
setnl sil
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
lea si, qword ptr [rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test rcx, -1420345926
imul ax, dx, 84
cmovl ax, cx
lea rdi, qword ptr [rax + rcx + 79]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
lea bx, qword ptr [rdx]
dec cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 11
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
