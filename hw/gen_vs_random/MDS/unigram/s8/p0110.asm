.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, dx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
btr eax, edx
test sil, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
cmovbe dx, cx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
or al, -61
and eax, 943733866
cmovl rcx, rdx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
or di, 0b1000000000000000 # instrumentation
bsr dx, di
cmovb rbx, rax
or dl, -97
cmovnp rsi, rbx
btr edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
