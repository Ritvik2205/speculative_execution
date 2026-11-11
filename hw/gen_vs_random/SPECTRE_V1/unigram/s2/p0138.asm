.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
movsx si, dl
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
lea rdi, qword ptr [rdx + rax + 76]
xchg ebx, eax
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
xchg bl, bl
cmp cl, cl
and al, dil
sbb edi, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
