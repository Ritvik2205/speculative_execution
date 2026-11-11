.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 22
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 34
or cx, 39
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rax, -2058103810
jmp .bb_0.2
.bb_0.2:
and ax, -122
xor bl, al
or sil, -49
xor al, sil
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
