.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmp bl, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
xor ebx, 36
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
