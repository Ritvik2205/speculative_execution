.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
test eax, 899472326
cmp si, 89
xor bl, dl
movsx ecx, cl
xor ax, -24879
add al, -102
dec bl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 63
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
