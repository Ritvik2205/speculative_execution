.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 94
btr rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
or ecx, 89
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
cmovnb rdi, rcx
cmovnp rbx, rdi
and ax, -122
jmp .bb_0.1
.bb_0.1:
or al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and dl, 48 # instrumentation
cmovz rdx, rsi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
test sil, 17
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and cl, 118 # instrumentation
cmovp eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
