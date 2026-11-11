.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ecx, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
btr esi, edi
and rbx, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
test dl, -85
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsr cx, di
cmovnb si, di
cmovno rdi, rdi
bts rbx, rdx
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
cmovns rdi, rsi
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
