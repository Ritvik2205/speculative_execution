.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, 98
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
cmovns eax, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
neg edi
imul rdx, rsi, 87
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor dl, sil
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
add cl, 107 # instrumentation
cmovnl di, di
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovns rbx, rbx
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
