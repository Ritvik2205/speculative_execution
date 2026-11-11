.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
test bl, -8
sbb dl, 127
and rax, -175411684
add dl, 47
mov cl, bl
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rax, 2134929425
sbb dil, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
add cl, -127
cmovnbe rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
