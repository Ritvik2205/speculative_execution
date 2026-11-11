.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 33
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 67
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
cmp rdx, -19
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
lea rdx, qword ptr [rax]
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
sbb cl, cl
cmp dl, al
lea ebx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
or dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
