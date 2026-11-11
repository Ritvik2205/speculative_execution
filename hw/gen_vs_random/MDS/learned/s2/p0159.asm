.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
xor cl, -13
or dl, dil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], si
xor sil, -14
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
test dl, dil
and sil, cl
test dx, 16353
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
