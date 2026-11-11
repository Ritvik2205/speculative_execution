.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, cx
test al, 127
test ebx, -961564216
xor al, sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
xor ecx, 8
or al, -17
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
or al, sil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
