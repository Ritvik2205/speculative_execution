.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
or edi, 95
sub sil, -18
and al, bl
test al, 42
and dil, cl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and al, -54
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
