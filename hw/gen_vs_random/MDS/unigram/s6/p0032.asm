.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 18
test dil, dil
bts rbx, 25
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or di, 8
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and cl, -40 # instrumentation
cmovp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
cmovnle rcx, rax
xor dx, 17
cmovno rax, rax
and dl, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
bts ax, 22
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
test dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
