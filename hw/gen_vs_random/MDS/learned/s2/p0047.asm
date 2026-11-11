.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or dil, 12
xor rdx, -59
or al, -58
test bl, -14
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor edi, 11
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
xor al, 34
test rdx, 87
and dl, cl
or bl, 127
and rdi, 45
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
