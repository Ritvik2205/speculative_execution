.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl esi, edi
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rdx, 76
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and dl, -53 # instrumentation
cmovbe esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
xor ax, -5889
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
cmovz edx, edx
or ecx, eax
cmovbe di, ax
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and bl, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
test si, 61
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
