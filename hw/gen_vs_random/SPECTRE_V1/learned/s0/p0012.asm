.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
xchg ebx, ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -109
add dl, 47
lea si, qword ptr [rax + rcx + 13]
cmp al, 62
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
xor al, -119
cmp al, cl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmp al, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
