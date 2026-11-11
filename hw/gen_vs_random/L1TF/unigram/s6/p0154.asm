.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov eax, 57
sub al, sil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
lea cx, qword ptr [rbx]
inc edx
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
or esi, eax
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax + rcx]
mul edi
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
xor al, 16
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 74
dec esi
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
