.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
test al, 91
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or cl, 39
and di, 99
bts rax, 77
bts rdi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
test dil, dl
test sil, -55
and si, -121
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or dl, 85
and dil, -39
jmp .bb_0.2
.bb_0.2:
test eax, -409834435
or al, -78
xor rax, -345061362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
