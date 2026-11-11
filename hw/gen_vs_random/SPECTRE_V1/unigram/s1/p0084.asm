.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
test rcx, 98
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 91
sbb rax, 1380680934
or sil, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 84
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
cmovns rsi, rsi
adc rdx, 35
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
setb al
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovp esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
