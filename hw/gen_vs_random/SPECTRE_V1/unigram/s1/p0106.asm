.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor rcx, rax
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
setnp dil
lea cx, qword ptr [rsi + rax + 99]
sub ecx, edx
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 84
add dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
