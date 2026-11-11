.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -23 # instrumentation
cmovno eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 94
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 24
bts si, 205
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
or dil, 12
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
or sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and dl, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
cmovbe ecx, edx
and dl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
