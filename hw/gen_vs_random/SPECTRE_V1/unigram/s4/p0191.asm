.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
cmp bl, -114
lea eax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
lea edx, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], cx
sbb al, bl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, al
lea rdx, qword ptr [rdi]
sub dil, sil
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
mov dl, cl
bt edi, 134
cmovo di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
