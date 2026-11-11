.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
add cl, cl
cmp dil, cl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
adc al, dil
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 15
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
and rax, 2134929425
add al, 36 # instrumentation
cmovnp rcx, rax
btc cx, di
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
