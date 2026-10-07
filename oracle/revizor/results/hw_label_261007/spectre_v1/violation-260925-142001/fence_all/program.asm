.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
and dil, byte ptr [r14 + rsi] 
lfence
add rax, 324518812 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
inc dword ptr [r14 + rax] 
lfence
or al, 1 # instrumentation
lfence
mov ax, 1 # instrumentation
lfence
div al 
lfence
add al, -27 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb word ptr [r14 + rsi], 37 
lfence
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, -29 # instrumentation
lfence
lea rax, qword ptr [rdx + rdx + 58362] 
lfence
xchg rcx, rcx 
lfence
cmovbe rcx, rdi 
lfence
add sil, 36 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add word ptr [r14 + rdi], si 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movzx rdx, word ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rsi], rsi 
lfence
or sil, 3 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
movsx eax, word ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rax], 1 # instrumentation
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
