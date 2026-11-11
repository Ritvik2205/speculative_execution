.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
test al, al
or al, al
and al, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
btc edx, 7
test edx, -1561252782
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and dl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and bl, 21 # instrumentation
cmovb di, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and al, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
xor dil, -3
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 72
cmovnle ebx, edx
test sil, bl
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
