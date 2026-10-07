.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi] 
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx] 
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax] 
or dl, al 
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi] 
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si 
add bl, 126 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl 
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl 
sub rbx, -128 
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx] 
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90 
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx] 
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3 
or rax, -357903210 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
