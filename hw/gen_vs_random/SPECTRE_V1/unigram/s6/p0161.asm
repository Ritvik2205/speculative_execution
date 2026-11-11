.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 57
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 28
bt esi, 52
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 44
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
cmovnle edi, edx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 84
xor dl, cl
sub al, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx + rax]
lea edx, qword ptr [rcx + rcx + 70]
add dil, 33 # instrumentation
setnz dil
lea rdx, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
