.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dil
lea eax, qword ptr [rcx + rcx + 30]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
lea dx, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 22
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
cmovno rax, rax
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and al, 33
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and eax, 933895314
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
add dl, 118 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
