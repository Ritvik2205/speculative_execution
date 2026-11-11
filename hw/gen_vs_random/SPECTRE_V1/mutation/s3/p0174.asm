.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -23 # instrumentation
setnle sil
and cl, bl
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
movzx esi, sil
mul al
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
neg ebx
add cl, -127
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
setl sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
test ax, dx
lea ebx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
xchg ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
