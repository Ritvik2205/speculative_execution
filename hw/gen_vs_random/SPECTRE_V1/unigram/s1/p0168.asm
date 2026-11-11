.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
add sil, -61 # instrumentation
seto sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
cmovle dx, bx
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 24
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
xor al, al
movsx edi, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
