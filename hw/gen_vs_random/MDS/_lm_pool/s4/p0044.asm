.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
or sil, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or al, cl
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
bts rdx, rax
bt si, cx
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
test sil, -96
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor al, cl
or al, -58
and bl, cl
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
