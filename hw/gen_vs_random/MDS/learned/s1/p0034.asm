.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -12519
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
test sil, cl
or al, -58
btc ax, 52
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or sil, -78
and sil, 89
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
or dl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test cl, -18
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
