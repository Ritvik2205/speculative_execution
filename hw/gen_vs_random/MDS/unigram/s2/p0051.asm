.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb cx, si
btc eax, 40
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ebx
cmovz rsi, rdi
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
bt ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
test dl, 27
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
cmovb rbx, rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
bt si, ax
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
