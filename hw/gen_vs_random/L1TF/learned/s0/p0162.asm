.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
lea ecx, qword ptr [rbx + rbx + 2102]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sbb cl, al
test sil, 29
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
test dil, -126
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
jmp .bb_0.4
.bb_0.4:
xor ax, -24879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
