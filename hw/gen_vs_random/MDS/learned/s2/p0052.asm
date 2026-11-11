.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
or ebx, edi
or di, -18
or al, al
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
xor edi, 74
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or cl, bl
test eax, 758789512
or bl, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 9
btc eax, 80
or al, al
and bl, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
