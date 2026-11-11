.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor rax, -404206377
jmp .bb_0.1
.bb_0.1:
and di, 91
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and bl, 68
or dil, -78
or sil, -49
xor al, bl
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
xor rsi, -117
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
