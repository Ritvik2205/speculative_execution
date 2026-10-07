.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
or eax, dword ptr [r14 + rdx] 
or ebx, edi 
or di, -18 
or al, al 
and rbx, 0b1111111111111 # instrumentation
lfence
cmovno esi, dword ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
lfence
or rax, qword ptr [r14 + rax] 
xor edi, 38 
and rcx, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rcx] 
and rcx, 0b1111111111111 # instrumentation
lfence
and esi, dword ptr [r14 + rcx] 
bts dx, di 
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp eax, dword ptr [r14 + rcx] 
or cl, bl 
test eax, 758789512 
test bl, dl 
cmovnb rdi, rdi 
and rax, 0b1111111111111 # instrumentation
lfence
cmovno rdx, qword ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rdi] 
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
cmovns di, word ptr [r14 + rax] 
and bl, dl 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb eax, dword ptr [r14 + rdi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
