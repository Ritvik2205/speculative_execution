.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi]
and cl, sil
neg rdx
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
or ebx, -124
add bl, 97 # instrumentation
cmovnb ax, si
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
or rdi, rdi
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
