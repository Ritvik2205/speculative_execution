.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
sbb rdx, -34
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
cmovp ax, si
movzx eax, al
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
sub dil, bl
lea ebx, qword ptr [rbx + rcx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
add cl, 88 # instrumentation
sbb cl, 45
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 66
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
