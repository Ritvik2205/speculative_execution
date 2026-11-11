.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
and ax, 19740
bt dx, 228
or bl, -52
and cx, -8
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
xor al, -89
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor al, -26
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
