.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 75
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
bts ebx, 22
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
inc sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
cmovp rbx, rsi
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
or dil, 60
cmovle ebx, eax
test rax, -331426050
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
