.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 28
or bx, di
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
or al, -57
add cl, -98 # instrumentation
setp sil
sbb bl, -88
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdx + rcx + 45]
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
