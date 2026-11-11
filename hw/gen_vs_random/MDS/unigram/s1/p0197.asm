.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 77
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 59
xor ax, ax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
cmovb ecx, esi
jmp .bb_0.1
.bb_0.1:
and sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or sil, -78
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
or cl, 6
and rdi, 7
cmovnbe bx, si
or dil, bl
not ax
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
