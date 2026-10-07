.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 36 # instrumentation
lfence
setnl cl 
lfence
and ax, si 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnle edx, dword ptr [r14 + rsi] 
lfence
lea bx, qword ptr [rax + rsi + 25491] 
lfence
cmovnbe edi, edx 
lfence
cmp al, al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb cl, byte ptr [r14 + rax] 
lfence
cmovnp rcx, rdx 
lfence
jno .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, 112 # instrumentation
lfence
setnbe cl 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rdi], dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movzx rdi, byte ptr [r14 + rdi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rax] 
lfence
lea esi, qword ptr [rbx + rcx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rbx], dl 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub dword ptr [r14 + rdi], 98 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
