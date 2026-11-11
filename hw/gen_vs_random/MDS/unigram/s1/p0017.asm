.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, -117
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
xor sil, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
cmovnz bx, ax
or bl, 127
or cl, -77
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
or cl, 7
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and dil, dl
xor ebx, edi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
cmovnp rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
