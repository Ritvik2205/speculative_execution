.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
or edx, edx
and cl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
xor rsi, rsi
and di, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
cmovns rsi, rax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
xor sil, 94
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
cmovnp edx, eax
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rax, 4
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
cmovnz rdx, rcx
btr edi, 221
and cl, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
