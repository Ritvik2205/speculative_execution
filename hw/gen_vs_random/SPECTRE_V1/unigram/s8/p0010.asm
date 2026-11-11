.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
sub ax, -17837
adc rax, 1310333622
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
setle bl
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
cmp sil, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
dec rdx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
cmp rcx, 43
sbb eax, 2098460225
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdi
lea rdx, qword ptr [rdi]
setnle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
