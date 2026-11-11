.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -116
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
adc rsi, 110
lea rax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sub dil, -111
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 87
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 21
add di, 44
sub bl, -6
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 22
movsx dx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
