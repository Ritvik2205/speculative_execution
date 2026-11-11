.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
lea eax, qword ptr [rcx]
and di, 67
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
add dl, 22
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
or bl, 114
cmp al, 56
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
lea rsi, qword ptr [rbx + rax + 95]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
