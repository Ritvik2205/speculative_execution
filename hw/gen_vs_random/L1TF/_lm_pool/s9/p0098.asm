.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
add rbx, 99
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and al, -68
imul al
jmp .bb_0.1
.bb_0.1:
xor ax, -24879
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
sbb dil, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
or rdi, 16
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
