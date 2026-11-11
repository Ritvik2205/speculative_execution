.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle ebx, ebx
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
or cl, -36
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or bx, 67
jmp .bb_0.3
.bb_0.3:
xor bl, dil
bt bx, si
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
jmp .bb_0.5
.bb_0.5:
or sil, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 1
xor dil, 8
or eax, 359647041
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
