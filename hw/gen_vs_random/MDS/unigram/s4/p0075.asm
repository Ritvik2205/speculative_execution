.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 6
and bl, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and cl, bl
and dil, sil
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and sil, -3 # instrumentation
cmovnb si, bx
xor dx, 69
btr ecx, edx
bts cx, 50
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 10
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
btc si, 44
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and al, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and cl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and dl, -38 # instrumentation
cmovp rdx, rsi
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and cl, dil
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
