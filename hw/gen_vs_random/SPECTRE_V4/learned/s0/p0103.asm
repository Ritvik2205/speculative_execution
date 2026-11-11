.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 111
cmp bl, dil
sub al, 29
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and al, 82
xor al, -82
and al, 49
xchg rdi, rax
xor cl, al
cmp dil, sil
or dl, -26
movsx di, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
add cl, sil
test dl, sil
xor al, bl
and ax, 26513
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
