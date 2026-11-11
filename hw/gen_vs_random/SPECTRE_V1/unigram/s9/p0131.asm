.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdi + rdx + 6]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
btr rbx, 19
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
adc cl, -81
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
adc al, -82
add dil, 72
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
cmovnb rdi, rbx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb di, -122
lea bx, qword ptr [rbx]
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
