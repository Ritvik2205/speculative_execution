.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
bt eax, 37
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
or al, 16
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
or dil, -76
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
or ax, 16560
and bl, bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and al, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
