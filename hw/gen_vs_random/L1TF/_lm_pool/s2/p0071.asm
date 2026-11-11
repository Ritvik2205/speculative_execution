.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and cx, -79
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
test dil, -126
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 39
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and bl, 89
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
lea esi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
