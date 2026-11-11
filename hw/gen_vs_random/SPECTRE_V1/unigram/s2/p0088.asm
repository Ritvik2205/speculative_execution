.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
mov di, cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 7
dec dil
sub eax, -518999763
add esi, edi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rsi, rax
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 59
add cl, -29 # instrumentation
lea rsi, qword ptr [rcx + rcx + 48]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
add cl, 40 # instrumentation
lea cx, qword ptr [rax + rax]
cmovns rax, rax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
