.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and cl, 11 # instrumentation
cmovp eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 20
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 6
cmovb rdi, rdi
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
cmovnp rbx, rdi
cmovnz si, ax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and cl, -23 # instrumentation
cmovno ecx, edi
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
