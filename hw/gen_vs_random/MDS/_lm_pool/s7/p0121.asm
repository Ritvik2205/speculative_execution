.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and al, -8
or eax, ecx
or dl, -31
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and al, -8
test al, 22
test al, dl
test edx, -372470678
xor eax, 1640090871
and si, -121
and bl, bl
jmp .bb_0.1
.bb_0.1:
test cl, 54
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
