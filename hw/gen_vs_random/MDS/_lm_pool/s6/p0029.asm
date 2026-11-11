.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor dil, 8
and ax, 5001
xor di, 93
bts rax, rbx
and si, -121
or sil, cl
and dl, dl
jmp .bb_0.1
.bb_0.1:
or ebx, edx
or cl, -36
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
or al, 30
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and si, -121
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
