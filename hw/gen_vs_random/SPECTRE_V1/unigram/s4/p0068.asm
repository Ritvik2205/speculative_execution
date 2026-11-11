.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
adc cl, cl
sub dil, 27
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
add al, 56 # instrumentation
cmovns ebx, eax
sets sil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
lea bx, qword ptr [rdx + rdx]
mul di
add bl, 126 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
