.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
add cl, -127
add bl, -23 # instrumentation
setnle sil
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
setl sil
neg ebx
mul al
movzx esi, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rdx]
xchg ebx, edx
test ax, dx
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
