.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
xor bx, 44
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 26
xor cx, -18
btr dx, ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dil, cl
btr ax, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or cl, -77
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or al, dil
xor ax, -4010
xor al, 115
and ax, 29207
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
