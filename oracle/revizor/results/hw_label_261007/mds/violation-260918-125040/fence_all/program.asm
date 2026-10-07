.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
or eax, dword ptr [r14 + rdx] 
lfence
or ebx, edi 
lfence
or di, -18 
lfence
or al, al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovno esi, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or rax, qword ptr [r14 + rax] 
lfence
xor edi, 38 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and esi, dword ptr [r14 + rcx] 
lfence
bts dx, di 
lfence
and dl, 110 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp eax, dword ptr [r14 + rcx] 
lfence
or cl, bl 
lfence
test eax, 758789512 
lfence
test bl, dl 
lfence
cmovnb rdi, rdi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovno rdx, qword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rdi] 
lfence
and dl, 91 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovns di, word ptr [r14 + rax] 
lfence
and bl, dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb eax, dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
