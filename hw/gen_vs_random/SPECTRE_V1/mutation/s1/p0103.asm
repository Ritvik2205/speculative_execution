.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -1265007362
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
adc cl, dl
setb al
movsx rdi, bl
mul dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
add cl, 22 # instrumentation
cmovns rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
lea ax, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
cmovb bx, bx
cmovno esi, ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
add bl, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
