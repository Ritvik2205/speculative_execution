.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
setz cl
xor edi, 115
xor al, -89
add dil, 72
or ax, -114
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
cmp al, 77
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
