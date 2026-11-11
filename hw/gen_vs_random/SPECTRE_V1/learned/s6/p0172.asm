.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
add dil, cl
add di, 44
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 24
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
test al, 84
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
