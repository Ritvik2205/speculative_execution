.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or sil, bl
test al, -7
and al, -8
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test cl, dil
test cl, 73
test dil, 46
btc bx, 104
and bl, cl
and rax, 1886208862
test eax, 1287331633
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor sil, cl
cmovle rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
