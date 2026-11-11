.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test al, -81
or al, 74
and ax, 5001
xor al, cl
not cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test sil, dil
or al, dl
and eax, 461212071
btr bx, dx
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
