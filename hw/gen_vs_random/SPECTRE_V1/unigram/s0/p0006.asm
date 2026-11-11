.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test dl, 74
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx + rdx]
mul dil
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
btr bx, 16
cmovl eax, ecx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
btc eax, 97
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
