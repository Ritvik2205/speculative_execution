.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
lea ax, qword ptr [rax + rcx]
xor eax, -69
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
xor dil, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
xor esi, 13
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
