.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
sub dil, -39
xor bl, sil
xor ax, 27703
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx + rcx + 56]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
cmovnle rax, rsi
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
