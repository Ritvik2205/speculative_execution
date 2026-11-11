.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 49 # instrumentation
cmovbe rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
bt eax, edx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
cmovp eax, ecx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
test di, 49
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
test cl, 101
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
bts ax, dx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
bt ecx, 37
or dil, bl
bt eax, esi
cmovnb rdi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
