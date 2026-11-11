.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
add cl, -56 # instrumentation
sbb rdx, -67
sub dl, bl
sub al, al
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 100
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rax], esi
cmovz esi, edx
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
adc dx, -112
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, 28
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmp cl, 64
and al, dl
xchg dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
