.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -6
lea esi, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
cmp bl, al
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 50
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
lea di, qword ptr [rdi]
imul eax, eax, 86
inc sil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
sbb rsi, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
