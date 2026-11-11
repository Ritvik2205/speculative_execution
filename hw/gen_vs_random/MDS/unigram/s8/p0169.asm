.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, dx
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and bl, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and bl, 120 # instrumentation
cmovnle edi, edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
test rax, -1579405415
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor rcx, -2
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
or eax, edx
cmovnl edx, edx
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
