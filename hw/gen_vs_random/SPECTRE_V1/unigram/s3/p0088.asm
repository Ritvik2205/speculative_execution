.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 2
sub al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
mov ax, 54
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
bts rdi, 19
add cl, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], esi
add cl, 97 # instrumentation
adc dx, si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
add bl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
or cx, 55
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
or rsi, 95
or bl, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
