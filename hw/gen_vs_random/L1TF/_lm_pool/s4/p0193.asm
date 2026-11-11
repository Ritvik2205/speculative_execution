.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
lea esi, qword ptr [rbx + rbx + 15]
xor al, dl
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
cmovb dx, bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
lea rax, qword ptr [rbx + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
lea cx, qword ptr [rdi + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
