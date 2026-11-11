.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 110
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 64
test ax, 18607
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 40
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rsi + rcx + 95]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and dil, sil
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 8
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
adc al, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
