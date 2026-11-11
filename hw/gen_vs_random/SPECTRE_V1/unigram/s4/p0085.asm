.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 11
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
sub ax, -15315
nop
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
xchg sil, dil
add cl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
add dl, -89 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
lea ax, qword ptr [rdx + rsi + 54]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 35
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
