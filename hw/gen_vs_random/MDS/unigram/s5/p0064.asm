.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
or dl, -89
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
or cl, cl
cmovnbe rsi, rsi
btc ebx, 149
cmovs ecx, esi
cmovnl edi, eax
and cl, 122 # instrumentation
cmovl edi, edi
xor dil, -5
cmovnp rdi, rdi
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and sil, -69
xor al, sil
and al, -86 # instrumentation
cmovns si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
