.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
or dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and al, cl
jmp .bb_0.1
.bb_0.1:
test rax, -359674714
and bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
not cl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
