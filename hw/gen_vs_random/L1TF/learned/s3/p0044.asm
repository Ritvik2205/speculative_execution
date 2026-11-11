.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
setno dl
inc bl
cmovb ax, dx
sub dil, 87
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
sub rcx, -121
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
