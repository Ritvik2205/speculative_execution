.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
sbb al, 33
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
sub bl, cl
cmovz eax, ecx
add dil, -95 # instrumentation
lea di, qword ptr [rsi + rsi + 4]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 11
cmovnbe rsi, rax
sbb cx, 77
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 83
or edx, 50
xor dil, cl
setbe cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
