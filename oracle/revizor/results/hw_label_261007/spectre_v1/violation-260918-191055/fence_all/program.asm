.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
add rbx, qword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock dec word ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov dil, byte ptr [r14 + rax] 
lfence
or dl, al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnle rcx, qword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rsi], 1 # instrumentation
lfence
and dx, word ptr [r14 + rsi] # instrumentation
lfence
shr dx, 1 # instrumentation
lfence
div word ptr [r14 + rsi] 
lfence
or si, 0b1000 # instrumentation
lfence
and sil, 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv si 
lfence
add bl, 126 # instrumentation
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdi], cl 
lfence
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rcx], cl 
lfence
sub rbx, -128 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
add dl, -51 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovns rax, qword ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rbx], -90 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovno rbx, qword ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock btr word ptr [r14 + rdx], 3 
lfence
or rax, -357903210 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
