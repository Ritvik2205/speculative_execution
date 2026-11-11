.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
btr eax, ecx
bts eax, eax
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
cmovnl ebx, ebx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
test dl, dl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and cl, 125 # instrumentation
cmovo ax, si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
cmovnz rdi, rdx
btc rdi, rsi
or rax, -1523798580
and al, -33 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or bl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
