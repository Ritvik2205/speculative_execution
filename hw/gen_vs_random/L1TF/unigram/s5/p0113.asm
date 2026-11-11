.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 35
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
add cl, -110 # instrumentation
btr cx, 181
sbb si, 13
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 74
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
and dil, al
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdi]
mul rcx
cmovz rsi, rdi
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
