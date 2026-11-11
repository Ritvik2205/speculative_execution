.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -74 # instrumentation
cmovns eax, esi
cmovnbe edx, eax
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
cmovnbe rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor sil, dil
cmovnbe rbx, rdx
xor rdx, -59
not esi
and cl, -35 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and ax, si
btr eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
