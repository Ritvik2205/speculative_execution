.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor rbx, 89
xor di, 93
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor sil, dl
bt cx, si
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or cl, al
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
