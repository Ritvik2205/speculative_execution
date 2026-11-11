.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 61
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
sbb al, bl
sbb bl, al
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
add cl, 65 # instrumentation
cmovo rcx, rsi
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
and sil, cl
lea di, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
