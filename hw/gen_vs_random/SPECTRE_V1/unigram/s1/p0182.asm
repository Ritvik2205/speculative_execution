.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
adc cx, di
add rdi, 81
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
cmovnle dx, cx
cmovz rax, rcx
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
sub bl, -19
lea ecx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
mov esi, edx
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx + 40]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
