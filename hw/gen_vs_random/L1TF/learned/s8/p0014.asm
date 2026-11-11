.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 83
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 28
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and sil, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 96
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
xchg al, cl
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdx + rsi + 40]
jmp .bb_0.3
.bb_0.3:
and di, 7
and cl, 22
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
