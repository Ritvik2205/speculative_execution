.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, bl
mul al
add cl, -127
setl sil
movzx esi, sil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
add bl, -23 # instrumentation
setnle sil
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
neg ebx
js .bb_0.1
jmp .exit_0
.bb_0.1:
test ax, dx
xchg ebx, edx
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
