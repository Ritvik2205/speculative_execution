.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
setnp cl
test cl, -49
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
cmovnz rax, rdx
lea rbx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 97
adc bl, dil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 47
or sil, -27
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
