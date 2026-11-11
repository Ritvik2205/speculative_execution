.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 67
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and al, 23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
or rax, -1523798580
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 22
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
cmovl edx, edx
or cl, 39
not dl
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
test sil, -96
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and dil, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
or bl, -62
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
