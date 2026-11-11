.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
add bl, 62
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 99 # instrumentation
sets dl
add cl, 97 # instrumentation
adc di, cx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 37
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
not rsi
adc bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
