.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
xor cx, 113
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor sil, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
cmp cl, 57
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
add al, -102
and al, dl
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
