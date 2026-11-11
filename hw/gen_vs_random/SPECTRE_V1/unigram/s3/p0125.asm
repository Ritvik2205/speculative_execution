.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
or edx, 50
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
lea rax, qword ptr [rax + rsi]
mul cx
xchg dil, dil
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
xor rax, 376589024
cmp cl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
setnb bl
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
