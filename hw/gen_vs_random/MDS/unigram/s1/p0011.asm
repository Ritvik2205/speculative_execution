.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
and cl, 118 # instrumentation
cmovp edx, ebx
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
test bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and bl, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
test edx, -1561252782
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
bts ecx, 3
test cl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
