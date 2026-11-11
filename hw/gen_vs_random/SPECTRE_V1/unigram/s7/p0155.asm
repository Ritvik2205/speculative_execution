.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and cl, -57
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
add bl, sil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 75
lea ax, qword ptr [rbx + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
cmp cl, 25
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
movzx edi, sil
cwde
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], 63
xchg edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
