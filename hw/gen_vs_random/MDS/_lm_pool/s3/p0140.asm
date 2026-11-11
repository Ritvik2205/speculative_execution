.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
xor rdx, -59
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
test edi, -1252846009
test rax, 1000448998
jmp .bb_0.1
.bb_0.1:
or sil, dil
test rcx, -613256812
test ebx, -2015966884
and al, -114
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and dx, 3
or dil, dl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
