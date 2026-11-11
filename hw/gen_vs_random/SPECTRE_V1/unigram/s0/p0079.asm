.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 91
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
add bl, 36 # instrumentation
setnl dil
or dil, dil
add dil, -73 # instrumentation
setnbe dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, 55
bt edx, eax
test cl, -31
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
btc edx, 8
lea bx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
