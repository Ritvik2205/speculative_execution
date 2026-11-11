.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -10351
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
or cl, 6
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test bl, dl
test cl, 91
test ecx, -1843375753
and sil, dil
btr ax, di
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or dil, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 83
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
