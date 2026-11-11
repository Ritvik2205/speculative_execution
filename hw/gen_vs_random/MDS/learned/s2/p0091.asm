.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
xor di, -83
or cx, 49
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 33
and dl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor rsi, -117
or cl, 6
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
test al, 91
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and rax, -2058103810
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
