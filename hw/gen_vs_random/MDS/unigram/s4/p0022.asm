.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
btr cx, 136
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
or sil, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 9
and cx, -8
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
jmp .bb_0.1
.bb_0.1:
cmovl eax, edx
or cl, -36
cmovb bx, dx
xor sil, 27
xor rcx, 71
and bl, 33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
bts rsi, rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
btr rbx, 193
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
