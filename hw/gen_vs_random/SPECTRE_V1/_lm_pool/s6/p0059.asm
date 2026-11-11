.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
add dil, -75
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
add al, -109
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
xor eax, 55
sub al, dl
add dil, dl
lea dx, qword ptr [rbx + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
