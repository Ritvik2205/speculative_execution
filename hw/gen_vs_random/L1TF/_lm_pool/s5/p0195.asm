.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
inc al
setno bl
cmp ax, 7046
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
test bl, 45
xor al, dl
jmp .bb_0.1
.bb_0.1:
cmovs si, cx
and cl, 30
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
