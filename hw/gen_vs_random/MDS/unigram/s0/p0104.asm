.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, edi
or dl, -115
and si, 65
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
bt edi, edi
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
or sil, -8
bt ecx, edx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
xor dil, 13
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
xor edx, 30
and dl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
and cl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
