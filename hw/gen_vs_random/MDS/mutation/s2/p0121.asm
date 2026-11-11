.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
or ax, -14271
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
or dil, 16
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and bl, bl
bt eax, 151
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and ax, -122
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc rcx, rsi
and dl, dl
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
