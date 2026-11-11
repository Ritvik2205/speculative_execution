.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
cmovnz di, cx
or cl, cl
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 80
test dil, -126
lea dx, qword ptr [rcx + rax + 3]
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
