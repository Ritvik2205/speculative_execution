.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, sil
test cx, 100
inc dil
cmp rdx, 68
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 20
sbb cx, cx
lea bx, qword ptr [rbx + rsi + 11]
neg al
lea edi, qword ptr [rdi + rbx + 85]
lea rcx, qword ptr [rdx + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], di
sub dx, 34
cmp dil, 78
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
