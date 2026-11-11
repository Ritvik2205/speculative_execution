.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ecx, 83
sub cx, 30
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
movsx bx, al
cmp dl, 71
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
sbb di, -122
lea bx, qword ptr [rax + rbx + 73]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], dx
and dil, sil
lea edx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
