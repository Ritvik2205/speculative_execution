.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 80
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
sub dil, -39
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
xor dil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
cmovbe ecx, esi
add al, 80 # instrumentation
sbb al, al
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
lea dx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
and rax, 1994547909
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
