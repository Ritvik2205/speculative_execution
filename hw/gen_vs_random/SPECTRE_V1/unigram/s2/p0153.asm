.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rdx + rax + 43]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
lea rdx, qword ptr [rsi + rdx + 98]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
