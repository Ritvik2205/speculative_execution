.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, eax
or si, si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or sil, sil
btr ecx, 83
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
cmovnz si, dx
and ax, 13090
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and cl, -49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and al, 82
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
bt rcx, 2
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
cmovnz edx, edx
cmovno rbx, rdi
xor bl, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
