.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
inc cl
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
add cl, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
sbb dil, sil
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 83
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xchg dil, bl
sub bl, -96
sbb cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
dec ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
