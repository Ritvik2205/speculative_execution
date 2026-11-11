.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 127
setno dl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
adc ax, di
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
lea rdx, qword ptr [rbx + rdi]
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
xchg edi, eax
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cwde
sbb rax, -148104813
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
bt si, bx
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
