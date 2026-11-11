.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, rbx
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
cmovb rcx, rax
and bl, 101 # instrumentation
cmovno edi, ebx
cmovnle rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
test ebx, -961564216
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
or sil, cl
bts rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
or di, 99
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
or rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
