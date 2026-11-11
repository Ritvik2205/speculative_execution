.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx + rcx + 13]
lea ax, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 92
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
sub cl, al
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -108 # instrumentation
sbb dil, 80
add bl, 112 # instrumentation
setnbe al
lea rax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
setnz cl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
