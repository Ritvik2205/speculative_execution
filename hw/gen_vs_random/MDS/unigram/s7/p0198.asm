.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 41
xor al, 34
and al, 75
test sil, sil
btr ax, 193
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
cmovnz eax, ebx
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and al, 17 # instrumentation
cmovnp edx, ecx
cmovnp rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and bl, -74 # instrumentation
cmovns eax, ecx
or rdx, -109
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
