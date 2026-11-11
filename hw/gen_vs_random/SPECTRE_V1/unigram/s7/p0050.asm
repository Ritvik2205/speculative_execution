.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
add cl, -127
cmovnp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -27 # instrumentation
setle bl
sub sil, al
or rcx, 25
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
add bl, 70
bt bx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
