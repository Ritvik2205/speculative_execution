.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rax, rbx
xor sil, al
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], cx
adc esi, edx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 46
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
xor rax, -68
add bl, 59 # instrumentation
cmovns ecx, ebx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
or dx, -126
setbe cl
cmovnb rax, rdi
lea ax, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
