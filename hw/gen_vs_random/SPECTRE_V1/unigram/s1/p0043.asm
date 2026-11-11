.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 77
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 27
sub al, 10
setns al
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sbb dil, dil
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
sbb dl, -23
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
sub esi, -120
mov dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
