.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor ebx, 56
and sil, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
not rcx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
cmovb rcx, rax
cmovl edx, eax
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
or rbx, rax
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
bts ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
and sil, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
