.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
xor edi, 38
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
or di, -18
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
cmovnb rdi, rdi
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and bl, dl
or cl, bl
or al, al
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
bts dx, di
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
or ebx, edi
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
test bl, dl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
test eax, 758789512
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
