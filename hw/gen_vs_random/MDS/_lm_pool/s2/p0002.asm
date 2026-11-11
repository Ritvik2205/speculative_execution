.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
xor al, 115
or dl, -21
and bl, 68
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
btr bx, cx
and rax, -978188247
jmp .bb_0.1
.bb_0.1:
and eax, 366961170
xor dil, al
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.3
.bb_0.3:
test dil, -80
xor rcx, -2
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
