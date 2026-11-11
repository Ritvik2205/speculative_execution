.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rcx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rcx]
test dl, -85
cmovnp bx, cx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 33
btr rsi, 146
bt cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
cmovb rcx, rdi
and bl, -82 # instrumentation
cmovz edx, ebx
and rax, 79
test dil, sil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
