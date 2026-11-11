.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 53
mov dl, al
lea edx, qword ptr [rax + rdx + 93]
test ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
add cl, al
cmp cl, cl
xor dl, dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
xor edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
