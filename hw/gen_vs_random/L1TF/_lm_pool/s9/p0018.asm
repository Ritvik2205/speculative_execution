.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
and sil, 37
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
xor rdi, -80
add al, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dl, cl
cmp al, 27
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rdx + rcx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test al, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
