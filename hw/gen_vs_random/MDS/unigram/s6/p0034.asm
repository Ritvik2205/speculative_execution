.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, 19
and al, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovbe esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
bts si, 158
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
cmovz rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
cmovnle eax, edx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 6
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
cmovnl eax, edx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor cl, dl
test cl, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
