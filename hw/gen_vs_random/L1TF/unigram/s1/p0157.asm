.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
lea rdi, qword ptr [rax + rcx + 72]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 98
lea bx, qword ptr [rsi + rsi + 53131]
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
cmp si, ax
movzx rbx, al
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
add dl, -7 # instrumentation
cwd
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
bswap rax
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
add sil, -121 # instrumentation
movsx ax, sil
add bl, -113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
