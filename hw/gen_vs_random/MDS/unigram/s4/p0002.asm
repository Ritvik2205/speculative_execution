.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 53
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
cmovp ecx, eax
test rsi, 82
test cl, cl
bt di, 52
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
or al, al
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
cmovl rbx, rdx
test al, -7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
