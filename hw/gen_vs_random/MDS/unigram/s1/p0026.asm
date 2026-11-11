.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
not bl
xor edi, edx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and dl, dl
and al, dl
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
cmovnp rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
or dl, -31
btc si, 99
and bl, 38 # instrumentation
cmovno rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
cmovle cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
and rsi, rdi
xor dl, -19
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
