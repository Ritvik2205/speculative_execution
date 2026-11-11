.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 15
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
or bl, dl
and rax, 1994547909
lea rdi, qword ptr [rcx + rdx + 84]
jmp .bb_0.1
.bb_0.1:
or rax, 1808026647
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
