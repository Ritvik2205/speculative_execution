.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, cx
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and cl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or sil, -49
test dil, -80
bt cx, bx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and al, 75
or rsi, 24
and cl, -71
cmovnbe rax, rdx
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
