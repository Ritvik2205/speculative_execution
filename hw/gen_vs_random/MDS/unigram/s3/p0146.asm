.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -829294476
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 83
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 64
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and dl, 46 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor cx, -18
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
xor dl, -19
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
or esi, -110
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
