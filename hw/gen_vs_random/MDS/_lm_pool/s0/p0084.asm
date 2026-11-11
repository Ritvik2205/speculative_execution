.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor dil, -3
xor ax, -16696
jmp .bb_0.1
.bb_0.1:
xor al, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
and sil, cl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor al, cl
xor dl, cl
and rbx, 65
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
