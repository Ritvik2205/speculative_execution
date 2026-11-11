.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rsi
and si, 17
and al, -68
test esi, ebx
add dl, 120 # instrumentation
adc bl, 60
cmovno dx, bx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
lea ebx, qword ptr [rsi + rdx + 56]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and eax, 1032144833
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
inc ecx
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
