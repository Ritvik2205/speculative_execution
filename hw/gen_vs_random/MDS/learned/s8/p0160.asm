.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
or ax, -7150
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test bl, -9
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor dil, -124
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dl, 40
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or al, 30
btc rax, 106
test eax, -409834435
xor al, 9
or bl, dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
