.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, 22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rsi, 73
and dil, dl
xor dil, bl
and cl, dil
and bl, 68
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and esi, 45
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
