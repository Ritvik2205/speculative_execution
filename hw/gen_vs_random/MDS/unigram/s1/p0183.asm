.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
test rsi, 26
cmovb edi, ecx
btr rdx, 70
xor bl, cl
xor al, 8
and cl, 91 # instrumentation
cmovle rax, rax
bt esi, edi
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
or bl, 100
and eax, 366961170
and cl, -6
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
or bl, bl
and al, cl
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
cmovl rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
