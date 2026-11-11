.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and sil, 37
xor eax, 965442135
sbb bl, -88
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov al, sil
lea rbx, qword ptr [rdx + rcx + 5]
and rdx, 88
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
