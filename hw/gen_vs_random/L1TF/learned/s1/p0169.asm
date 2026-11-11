.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -3 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
cmp rdx, rdx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
sbb esi, 1
or rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 64
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
