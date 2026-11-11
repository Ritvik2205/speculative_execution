.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ax
and rcx, rdi
and rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
test esi, 61
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
cdq
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
xor edi, 115
add al, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bts di, 230
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 93
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
add sil, cl
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
