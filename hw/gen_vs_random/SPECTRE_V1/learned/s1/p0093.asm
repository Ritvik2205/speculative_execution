.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb dl
lea eax, qword ptr [rdi]
sub ax, si
xor cl, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
cmovno esi, edi
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
and di, si
lea edx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 47
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and bl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
