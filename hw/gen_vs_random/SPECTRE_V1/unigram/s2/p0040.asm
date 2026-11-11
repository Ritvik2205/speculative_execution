.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cx
imul edi, ebx, 25
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
adc di, ax
xchg bl, dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 64
or dx, 65
seto sil
test sil, 97
add cl, dl
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 99
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
cmovb ebx, esi
lea rdi, qword ptr [rax + rbx + 55]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
