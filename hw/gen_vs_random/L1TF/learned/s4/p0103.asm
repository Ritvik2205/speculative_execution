.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx + rsi + 3]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
xchg ecx, edx
cmp bl, al
and dl, dl
adc bl, 86
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and sil, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
