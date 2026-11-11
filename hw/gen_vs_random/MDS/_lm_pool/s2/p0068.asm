.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test al, 66
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or bl, 13
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or al, dil
or dl, -31
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 78
and al, dil
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and ax, 31082
test rsi, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
