.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -126
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor dl, 8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor sil, dl
xor dl, -19
btr cx, si
and bx, 40
test bl, -9
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and cl, -19
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
test al, 66
and bx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
