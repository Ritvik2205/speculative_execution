.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 4
btr dx, si
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
and rax, -109
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sub al, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
lea ax, qword ptr [rsi + rsi + 23]
lea edx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
