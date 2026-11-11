.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovns di, bx
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rcx, rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and al, -86 # instrumentation
cmovns dx, cx
and sil, -56
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
or dil, 12
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
