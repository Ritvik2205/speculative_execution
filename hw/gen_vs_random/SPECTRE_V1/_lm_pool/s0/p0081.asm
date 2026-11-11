.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
sbb al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
not cl
sub sil, dl
sub dil, -111
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
