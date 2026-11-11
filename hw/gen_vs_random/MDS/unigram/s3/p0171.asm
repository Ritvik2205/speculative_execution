.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and cl, al
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
cmovno rdx, rdx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and cl, -71
xor rcx, 71
and ax, 29207
xor cl, 15
xor edi, 67
test ax, -20900
xor bx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
or rcx, -17
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
