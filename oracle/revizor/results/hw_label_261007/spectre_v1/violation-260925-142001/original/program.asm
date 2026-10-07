.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi] 
add rax, 324518812 
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax] 
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al 
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37 
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, -29 # instrumentation
lea rax, qword ptr [rdx + rdx + 58362] 
xchg rcx, rcx 
cmovbe rcx, rdi 
add sil, 36 
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si 
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi 
or sil, 3 
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx] 
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx] 
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
