.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test sil, 17
lea rbx, qword ptr [rdi]
xor al, bl
xor al, dil
and ax, 339
xor sil, 27
and al, al
bt ecx, esi
test ax, 6113
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
xor dl, 34
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
