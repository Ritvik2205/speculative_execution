.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or bl, -54
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or dl, dl
and ax, -10351
xor bl, -61
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or dil, dl
and cl, cl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
bt ax, cx
xor cl, 24
test cl, 62
and al, dl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
or cl, al
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
