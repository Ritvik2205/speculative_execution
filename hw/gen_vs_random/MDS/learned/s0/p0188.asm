.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 65
or eax, -927349615
xor al, 115
xor sil, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
or dil, 12
xor dl, 34
xor al, 55
or cl, 39
xor rbx, 89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
not cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
