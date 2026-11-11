.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
lea cx, qword ptr [rax]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
mov bl, 59
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
movzx esi, cl
xchg rdx, rdx
test bl, 59
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 27
adc sil, -115
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
