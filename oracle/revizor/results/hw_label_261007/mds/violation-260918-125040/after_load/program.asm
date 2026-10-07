.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx] 
lfence
or ebx, edi 
or di, -18 
or al, al 
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax] 
lfence
xor edi, 38 
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx] 
lfence
bts dx, di 
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx] 
lfence
or cl, bl 
test eax, 758789512 
test bl, dl 
cmovnb rdi, rdi 
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rdi] 
lfence
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax] 
lfence
and bl, dl 
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
