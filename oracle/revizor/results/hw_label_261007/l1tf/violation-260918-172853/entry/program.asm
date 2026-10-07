.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
add al, -93 # instrumentation
xchg rbx, rax 
lea rsi, qword ptr [rdx + rcx] 
lea rax, qword ptr [rax + rcx] 
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi] 
and eax, 1167476476 
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi] 
and dl, -98 
sbb rax, -1477844571 
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax] 
setnbe bl 
test eax, -1410822875 
imul ax 
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi] 
xchg si, bx 
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi] 
btc rax, rbx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
