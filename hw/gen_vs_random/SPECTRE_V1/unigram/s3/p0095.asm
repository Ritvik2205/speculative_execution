.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 1 # instrumentation
add al, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and dl, 96
cmovnp ax, bx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
add cl, -42 # instrumentation
lea esi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
xchg ebx, esi
js .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 36
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 17
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmovnle rdx, rdx
btr esi, 51
add bl, 7 # instrumentation
cmovnl ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
