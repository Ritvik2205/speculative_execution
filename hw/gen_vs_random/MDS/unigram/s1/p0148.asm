.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
cmovb esi, eax
bts rdi, 62
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 12
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 15
cmovle ax, ax
or al, -48
or cl, 10
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
cmovbe bx, si
cmovl rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
or cl, 100
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
cmovnb rdx, rsi
or si, cx
and sil, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
