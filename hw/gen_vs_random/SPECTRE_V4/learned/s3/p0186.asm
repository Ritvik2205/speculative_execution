.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
xor dl, cl
add dil, -84
test ebx, 51
sub sil, cl
xchg rdi, rcx
test dl, 114
or esi, 32
movzx ax, dl
xor bl, 27
sub dl, dil
xor ax, 15671
add cl, bl
sbb al, 43
bt eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
