.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
lea rdx, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
xor al, 78
setb bl
lea edi, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
lea si, qword ptr [rdi + rdx + 63]
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
