.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
lea cx, qword ptr [rdi]
sub al, -89
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
test al, 84
not bl
xor dl, sil
cmp di, 1
and al, bl
test al, -71
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
add dl, 47
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
