.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 149
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and bx, dx
test sil, 85
cmovnbe si, ax
cmovo dx, di
xor bl, bl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and eax, -872608366
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 60
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
xor eax, 1170472196
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
