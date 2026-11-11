.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
or al, bl
xor al, 38
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
xchg edx, ecx
cmp bl, al
xor bl, al
test ecx, 98
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
