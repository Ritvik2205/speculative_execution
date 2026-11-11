.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sbb edi, 77
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, al
jns .bb_0.2
jmp .exit_0
.bb_0.2:
btc edi, 50
and al, al
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
