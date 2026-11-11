.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor edx, 94
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
or esi, ecx
jmp .bb_0.1
.bb_0.1:
or sil, al
or ecx, 92
not al
or al, 74
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test ax, -11534
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
