.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rdi]
sets cl
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rsi + rdi + 31594]
sbb sil, 126
setnle dil
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add bl, -41 # instrumentation
xchg al, sil
xor cl, 114
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
add al, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
