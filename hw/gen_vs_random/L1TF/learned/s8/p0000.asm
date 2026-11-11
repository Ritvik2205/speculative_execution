.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
xchg esi, eax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
test sil, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
lea ax, qword ptr [rdi]
or cl, -78
cmovb ax, dx
btc ax, di
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 74
lea rbx, qword ptr [rdx + rax + 45]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
