.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, dx
and al, 2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor dil, -70
xor ebx, 61
and sil, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmovz rdx, rsi
xor bl, -88
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
or ebx, -104
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
xor al, bl
test dil, -80
bt edx, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 74
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
