.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 21
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 74
sub al, sil
or al, -5
and ebx, 108
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdi]
cmp al, -119
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
