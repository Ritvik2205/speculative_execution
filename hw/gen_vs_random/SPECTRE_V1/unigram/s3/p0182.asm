.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rdi]
add cl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
add al, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
setnz cl
or bl, 69
test bl, 89
cmovle rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
add al, 32 # instrumentation
sbb cl, al
add dl, 92 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
