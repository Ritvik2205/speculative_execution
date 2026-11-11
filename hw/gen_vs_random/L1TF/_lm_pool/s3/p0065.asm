.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
add rsi, 18
jmp .bb_0.1
.bb_0.1:
add cl, 104 # instrumentation
sbb rcx, 86
neg rbx
and rdi, rdx
jmp .bb_0.2
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
