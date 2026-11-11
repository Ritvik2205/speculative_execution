.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
xor ax, 22976
xor rsi, 73
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
xor al, 38
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 92
bt edx, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
