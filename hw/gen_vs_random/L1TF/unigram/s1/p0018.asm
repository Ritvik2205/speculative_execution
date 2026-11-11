.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
movzx si, cl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 45
and dx, 68
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
bswap rax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 47
add al, -117 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ebx
test rdi, rax
jmp .bb_0.1
.bb_0.1:
neg rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
xchg dx, bx
dec bl
and bl, 89
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
