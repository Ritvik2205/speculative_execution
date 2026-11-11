.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
btr edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
bswap rbx
xchg esi, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 92
lea cx, qword ptr [rcx + rax + 96]
xor ebx, -81
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 23
sbb si, ax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
add al, -1 # instrumentation
nop
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
