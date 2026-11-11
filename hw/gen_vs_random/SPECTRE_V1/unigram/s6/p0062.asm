.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
test dl, dil
cmovle dx, ax
test dl, 113
xor dil, dil
sbb dl, 127
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rcx + rsi + 48]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
or rax, -1571963467
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 66
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
lea di, qword ptr [rdi + rax + 15575]
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
