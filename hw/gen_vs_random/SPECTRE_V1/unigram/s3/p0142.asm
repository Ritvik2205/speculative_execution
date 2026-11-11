.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, sil
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
add dl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and esi, 77
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 52
adc rdi, 80
add dl, 47
lea edx, qword ptr [rdx + rdx + 48]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
