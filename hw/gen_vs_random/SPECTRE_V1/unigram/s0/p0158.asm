.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
lea dx, qword ptr [rcx + rdi + 45005]
adc al, dil
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
btc ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
sbb bl, -41
mov edi, ecx
add cl, -56 # instrumentation
sbb rbx, 43
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
setns al
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
xor sil, dl
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
