.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
sub bl, -96
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
or rax, 1808026647
and dl, 32
movzx edx, si
test bl, -92
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
