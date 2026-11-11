.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 75
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
cmovns dx, ax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
test ax, 6113
not bl
and cl, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovnp rbx, rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 12
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or dil, -78
test ecx, -1843375753
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and ecx, -104
xor rsi, -117
not al
cmovnbe edx, edx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
