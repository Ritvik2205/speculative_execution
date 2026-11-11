.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and al, al
test dil, -51
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
btr bx, dx
and di, 99
xor cx, -18
or cl, dl
and al, cl
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
xor dil, bl
xor rcx, -2
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
