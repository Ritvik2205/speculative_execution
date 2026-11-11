.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 20
xor dl, 19
cmp si, 55
inc rsi
test ax, 7679
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 64
dec eax
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
