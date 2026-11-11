.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
or di, 37
or dl, 51
or dx, 125
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
bts rax, 77
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
cmovnz si, cx
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
or bl, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
xor bl, 67
cmovnbe eax, ecx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
