.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 36 # instrumentation
setnl cl 
and ax, si 
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi] 
lea bx, qword ptr [rax + rsi + 25491] 
cmovnbe edi, edx 
cmp al, al 
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax] 
cmovnp rcx, rdx 
lfence
jno .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, 112 # instrumentation
setnbe cl 
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl 
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi] 
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax] 
lea esi, qword ptr [rbx + rcx] 
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl 
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98 
and rax, 0b1111111111111 # instrumentation
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
