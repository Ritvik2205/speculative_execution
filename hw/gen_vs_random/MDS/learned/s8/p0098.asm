.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
test cl, 54
xor al, 99
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor cx, -18
xor dl, 40
and bl, dl
or al, -75
and rcx, -63
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or al, 37
xor sil, al
cmovle ax, bx
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
