.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
inc dl
add dil, bl
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
sub cl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
sub dl, sil
sbb al, al
add al, -65
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp al, 23
add cl, sil
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
cmovnbe rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
