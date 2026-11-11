.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
add dil, al
add bl, 68
lea si, qword ptr [rcx + rsi + 34]
add cl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], -54
cmp ax, -31327
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
add al, cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
or al, -48
sbb rax, 2044012157
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
and al, al
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
