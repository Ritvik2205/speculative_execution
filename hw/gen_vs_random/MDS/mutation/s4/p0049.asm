.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmovo dx, ax
or ax, -11837
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
cmovns edx, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
btr si, 208
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
xor cl, 83
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
bt edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
