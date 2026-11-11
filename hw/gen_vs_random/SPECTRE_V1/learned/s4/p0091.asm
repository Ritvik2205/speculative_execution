.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
test bl, -8
and ax, 21910
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
add dil, bl
sub al, bl
cmp al, sil
setnb cl
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
