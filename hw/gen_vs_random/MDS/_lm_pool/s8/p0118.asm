.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
xor al, 122
xor sil, -46
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
or al, 37
or dl, cl
bt di, bx
xor bl, dil
test al, 127
bt cx, bx
jmp .bb_0.1
.bb_0.1:
or al, dl
cmp dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
