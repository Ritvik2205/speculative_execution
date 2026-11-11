.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
sub sil, dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
test ecx, 9
test al, cl
sub cl, 32
cmovb esi, eax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
xchg eax, ebx
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rax]
sub rdx, 21
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rsi
mul dx
cmovo di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
