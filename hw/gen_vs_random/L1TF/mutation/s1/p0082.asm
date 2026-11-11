.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -24
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
lea ax, qword ptr [rsi]
cmovo dx, cx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
add dl, -3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
