.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rcx + 98]
cmp dil, dil
add dl, dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
lea rdi, qword ptr [rcx + rdi + 86]
adc al, 70
and rsi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rsi]
bswap rbx
mul rax
jmp .bb_0.1
.bb_0.1:
sub dl, sil
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
lea ax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
