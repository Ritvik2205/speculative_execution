.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
lfence
setnb sil 
lfence
lea eax, qword ptr [rdi] 
lfence
sub ax, di 
lfence
not sil 
lfence
xor ax, -2537 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and rax, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rsi], rax 
lfence
jnb .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
lfence
mov rax, qword ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rcx], si 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and rax, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rcx], rax 
lfence
or sil, -27 
lfence
mov bl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp si, word ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp cl, byte ptr [r14 + rcx] 
lfence
imul edi, ebx 
lfence
bt bx, 27 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub ecx, dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
