.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edx
lea rbx, qword ptr [rdx + rbx + 43]
xchg eax, edi
test al, -99
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
seto al
sub ax, 124
jl .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, dil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add bl, 56 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
btr esi, ebx
sub dl, sil
test rbx, 59
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
