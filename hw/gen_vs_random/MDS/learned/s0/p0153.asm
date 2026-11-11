.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test bl, -9
or rsi, 60
and di, 99
or al, 74
jmp .bb_0.1
.bb_0.1:
and cl, dl
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or bl, 43
or bx, 47
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 66
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
