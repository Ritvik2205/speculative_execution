.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 10
or ax, -7150
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 65
bt ax, 76
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
or rbx, -77
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and bl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
cmovnbe rcx, rdi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
