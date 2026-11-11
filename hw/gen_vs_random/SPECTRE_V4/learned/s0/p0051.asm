.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or cl, al
inc eax
xor al, -60
sub rax, 1294268026
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
xchg rbx, rsi
add al, 40
jmp .bb_0.1
.bb_0.1:
cmp dl, cl
inc dil
movsx si, cl
sub al, cl
sub sil, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
