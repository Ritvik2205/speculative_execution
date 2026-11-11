.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax]
btr ecx, eax
not rcx
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
setnp dl
setnle bl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and dx, 78
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
