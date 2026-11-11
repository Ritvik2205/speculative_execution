.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
xchg ebx, ecx
cmp bl, sil
cmp al, 53
add ax, 23362
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
test al, -75
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
