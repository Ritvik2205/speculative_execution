.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and al, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmovnp rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
cmovnp ecx, eax
cmovnle rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
btr ax, 193
cmovb ebx, esi
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and ecx, -104
xor edi, 18
cmovs eax, edi
xor bl, 67
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
