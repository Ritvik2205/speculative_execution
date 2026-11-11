.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
and cl, cl
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
test al, -70
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
sub al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
