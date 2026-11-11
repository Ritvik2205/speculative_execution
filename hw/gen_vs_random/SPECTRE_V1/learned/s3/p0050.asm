.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and bl, al
cmp bx, 92
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, sil
and al, -54
or ax, 18658
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
