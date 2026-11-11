.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 37
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
xor si, 80
cmovz rbx, rcx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 25
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or cl, dil
xor dx, 41
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
