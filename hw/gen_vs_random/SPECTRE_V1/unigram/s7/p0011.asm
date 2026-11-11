.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
adc rbx, 78
and rcx, -29
lea edi, qword ptr [rcx + rax + 49]
lea ebx, qword ptr [rdi + rdi + 31]
sbb bl, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mul rcx
cmovb edi, eax
mul cl
lea rcx, qword ptr [rdx + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
cmp eax, ebx
sub rcx, rcx
xchg al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
