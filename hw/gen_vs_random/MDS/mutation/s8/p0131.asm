.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 8 # instrumentation
cmovz rax, rbx
cmovl rbx, rsi
bt rdi, 36
test bl, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and dl, 48 # instrumentation
cmovz rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
or ax, -4210
and cl, cl
and rdx, rsi
btr eax, ecx
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
cmovns rsi, rax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
cmovnp edx, eax
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
