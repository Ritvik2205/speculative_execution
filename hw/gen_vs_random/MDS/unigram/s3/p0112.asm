.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
test dl, dil
and cl, al
test sil, bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and cl, cl
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
test cx, 401
jmp .bb_0.1
.bb_0.1:
test si, bx
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
xor di, -83
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
bt bx, cx
bt rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
bts esi, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
