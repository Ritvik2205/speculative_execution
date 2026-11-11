.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
sub rdx, 56
and dl, -109
xor sil, -33
imul rcx, rsi, 33
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
or esi, -74
cmovnz si, di
imul rsi, rcx, 45
not si
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 88
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
