.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
add al, -102
and dx, ax
sub di, 6
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
xor al, sil
test edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
sbb dx, cx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 86
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -63
cmovb cx, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
