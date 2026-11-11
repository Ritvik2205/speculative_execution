.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, bl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
sbb ebx, 89
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
sub rcx, 13
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
btr cx, 72
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
