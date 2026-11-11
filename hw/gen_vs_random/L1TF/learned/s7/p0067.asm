.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test bl, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and cl, al
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 23
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
jmp .bb_0.2
.bb_0.2:
cmovnp rbx, rdx
add dil, -7
or edi, 94
sbb dil, 52
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
