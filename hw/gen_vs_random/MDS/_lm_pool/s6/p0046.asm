.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27170
cmovns ax, dx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor dil, bl
and al, -8
xor dl, dil
btr rsi, 207
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and ax, -16061
and bl, 68
and eax, -829294476
and dl, -73
or bl, cl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor cl, dl
bt si, bx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
