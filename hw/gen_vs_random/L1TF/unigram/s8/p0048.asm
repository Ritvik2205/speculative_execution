.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno al
add eax, 109
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
setz dil
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
bt eax, 94
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
dec al
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
movzx edx, cl
test sil, sil
nop
sub ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
