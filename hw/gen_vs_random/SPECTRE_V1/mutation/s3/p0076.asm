.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -2019837038
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
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
add cl, -71
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
setnz dil
inc dil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -86
mov rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
