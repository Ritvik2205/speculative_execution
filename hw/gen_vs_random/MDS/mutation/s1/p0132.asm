.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
bts dx, di
or al, al
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
or cl, bl
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
or di, -18
cmovnb rdi, rdi
xor edi, 38
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
or ebx, edi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
test bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
test eax, 758789512
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
