.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 38
cmovp ecx, eax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 15
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 55
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 60
test edx, esi
test cx, di
btr dx, dx
xor al, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and eax, ecx
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
