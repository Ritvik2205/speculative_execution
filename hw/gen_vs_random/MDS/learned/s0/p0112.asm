.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and eax, -85386306
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and cl, cl
or sil, -49
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
or bl, al
and al, dil
cmovnp rsi, rdx
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
