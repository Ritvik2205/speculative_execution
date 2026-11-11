.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl eax, eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
not eax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
or al, -8
or ax, -4635
cmovp ax, di
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
cmovz rax, rcx
and al, 93
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
