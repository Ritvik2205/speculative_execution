.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
imul bl
setns sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add bl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
xchg sil, dl
cmovnp rdx, rsi
or bl, dl
lea bx, qword ptr [rdi + rbx + 84]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
add cl, 35 # instrumentation
sets sil
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
