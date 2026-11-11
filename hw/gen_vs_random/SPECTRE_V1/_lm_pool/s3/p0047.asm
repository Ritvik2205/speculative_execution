.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
sub cl, -47
sub dl, -12
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, al
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 29
test al, 48
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
sbb edi, 29
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
