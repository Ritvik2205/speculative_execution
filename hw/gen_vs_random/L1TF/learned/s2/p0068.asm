.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
xchg eax, ecx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
cmovns rax, rcx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 27
xor al, 16
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
cmovnle rdi, rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
