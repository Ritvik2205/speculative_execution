.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
cmovp eax, edi
bts ecx, 3
btc rbx, 102
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
btc cx, 115
cmovz bx, bx
and cl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
test rdi, 7
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
bts dx, 50
or rbx, -77
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
