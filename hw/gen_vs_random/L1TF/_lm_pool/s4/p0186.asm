.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
jmp .bb_0.1
.bb_0.1:
test sil, al
sub rbx, 60
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
cmovs bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
