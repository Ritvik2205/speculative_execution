.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 34
sub bl, 56
cmp rax, 2096656187
or bl, -80
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovno si, di
test al, 115
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
add cl, sil
sub dl, 107
or al, bl
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
