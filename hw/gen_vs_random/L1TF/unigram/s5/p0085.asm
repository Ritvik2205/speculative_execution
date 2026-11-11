.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
imul ax, si, 15
lea cx, qword ptr [rcx + rsi + 9]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
seto dl
setb dl
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
lea rdx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
sub dl, bl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
add bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
