.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rsi + rax + 68]
setnle cl
imul cx, si, 13
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and bl, 124
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
lea esi, qword ptr [rdx + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
mov bl, dl
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 27
not rsi
add bl, -92 # instrumentation
cmovs dx, ax
movzx ax, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
