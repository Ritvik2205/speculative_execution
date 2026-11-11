.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
bts eax, 222
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
bts rbx, rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and bl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
test dil, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and al, 47 # instrumentation
cmovnp eax, edi
cmovnle rbx, rsi
test edx, -372470678
and rdi, rdx
cmovno rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
or bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
