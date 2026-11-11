.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
sbb al, -114
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
lea edx, qword ptr [rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
sub bl, al
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
cmp si, dx
add dil, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
add sil, -68
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
cmovnb si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
