.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cl, cl
mov sil, 30
add bl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
cmovz edx, ecx
not cl
not si
xor rdx, 31
cmp sil, 25
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add al, 41 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
lea edi, qword ptr [rsi + rax + 48]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
