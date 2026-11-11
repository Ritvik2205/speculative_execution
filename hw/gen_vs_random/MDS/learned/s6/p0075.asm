.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
xor cl, dl
or ebx, ecx
test al, al
not al
and bl, 68
test al, -7
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 6
or al, cl
and sil, -9
and rax, -1931765367
test edi, -1252846009
or al, 25
xor al, 122
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
