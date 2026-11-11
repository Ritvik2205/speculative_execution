.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 34
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 92
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and al, cl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
or eax, esi
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or edi, -88
btr cx, 136
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
btc rdx, rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
