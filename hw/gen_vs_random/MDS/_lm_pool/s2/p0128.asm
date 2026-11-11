.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
or al, dil
test cl, -123
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
test dl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
or sil, cl
test al, 127
bt ax, si
or al, 16
or al, -75
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
