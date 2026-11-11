.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
btr di, 89
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
not ebx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
cmovb edx, esi
and dl, 84 # instrumentation
cmovl rax, rsi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
test dl, dl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 1
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
