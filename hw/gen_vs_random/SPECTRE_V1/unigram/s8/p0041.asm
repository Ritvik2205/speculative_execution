.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 38
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
not al
imul edi, edx, 78
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 35
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
cmovnl eax, edi
adc dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
xor bl, dil
bt rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
