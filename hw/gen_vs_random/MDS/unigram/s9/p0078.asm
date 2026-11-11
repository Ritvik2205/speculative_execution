.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
or rdi, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
cmovnp rbx, rdx
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and al, -33 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
or rbx, -77
xor cl, 55
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
cmovle cx, dx
bt rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
