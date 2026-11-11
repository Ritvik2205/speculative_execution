.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and ax, 21910
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
add bl, -95
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb dil, -93
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
movsx ecx, cx
xchg dl, dl
adc eax, 1725322202
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
lea ax, qword ptr [rbx + rdx + 32397]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and sil, 111
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
