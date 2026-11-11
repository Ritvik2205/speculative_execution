.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
or al, -2
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test sil, 29
and al, -68
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
test bl, 12
or si, 63
xor al, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
