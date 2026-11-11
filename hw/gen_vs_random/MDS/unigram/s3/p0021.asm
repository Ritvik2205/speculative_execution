.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rbx
cmovo ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
or bl, cl
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
bt rax, rax
cmovno rbx, rax
jmp .bb_0.1
.bb_0.1:
and cl, dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
cmovnb rax, rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
or rbx, -72
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and cl, -85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
