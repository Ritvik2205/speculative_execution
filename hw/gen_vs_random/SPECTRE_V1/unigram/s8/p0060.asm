.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
add bl, -56 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
setnz bl
cmovle bx, bx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, sil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
bts cx, si
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
setnle dil
xchg ecx, edx
bts bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
