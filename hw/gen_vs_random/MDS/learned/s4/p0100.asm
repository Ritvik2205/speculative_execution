.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and ebx, 78
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
or al, -58
and cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor cl, al
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
xor rax, -91
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor al, 115
test ecx, -1843375753
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
