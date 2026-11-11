.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
xor rsi, rdx
and bl, 89
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
cmp dx, 14
lea esi, qword ptr [rsi + rdi]
sbb di, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rcx, 47
imul bl
bt rbx, 56
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
bt di, 93
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
or ebx, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
