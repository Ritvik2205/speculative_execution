.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 45
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 85
xchg esi, edi
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
sbb rax, 1161375577
cmp cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
