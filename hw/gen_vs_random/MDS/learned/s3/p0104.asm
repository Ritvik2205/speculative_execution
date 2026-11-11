.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
btc ebx, 149
and dx, 3
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor cl, dl
or ax, -11837
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.3
.bb_0.3:
xor al, -89
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rax, -1931765367
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
