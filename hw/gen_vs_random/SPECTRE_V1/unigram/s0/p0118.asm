.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -47 # instrumentation
sbb dl, 99
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
lea di, qword ptr [rsi + rax + 63231]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 63
add bl, -42 # instrumentation
lea bx, qword ptr [rdx + rsi]
adc si, 6
test si, 9
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 40
setnp cl
sbb dil, -93
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -119 # instrumentation
adc al, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
bt edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
