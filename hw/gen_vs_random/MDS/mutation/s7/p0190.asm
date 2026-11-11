.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmovo dx, ax
or ax, -6817
cmovnp cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovnb edx, eax
cmovb rcx, rdi
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovnbe ebx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
btr si, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and bl, 120 # instrumentation
cmovnle edi, edi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmovns edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
