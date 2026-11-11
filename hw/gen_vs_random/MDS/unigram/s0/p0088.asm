.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
test al, 91
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
cmovnp rdi, rdi
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and dl, 93 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
xor bl, -61
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and cl, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or rdi, -11
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
or bl, 127
and bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and di, 91
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
