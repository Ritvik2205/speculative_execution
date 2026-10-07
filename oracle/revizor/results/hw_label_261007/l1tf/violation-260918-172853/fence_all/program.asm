.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
lfence
xchg rbx, rax 
lfence
lea rsi, qword ptr [rdx + rcx] 
lfence
lea rax, qword ptr [rax + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnp dx, word ptr [r14 + rdi] 
lfence
and eax, 1167476476 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sbb rdi, qword ptr [r14 + rdi] 
lfence
and dl, -98 
lfence
sbb rax, -1477844571 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo edi, dword ptr [r14 + rax] 
lfence
setnbe bl 
lfence
test eax, -1410822875 
lfence
imul ax 
lfence
add al, 51 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
setl byte ptr [r14 + rdi] 
lfence
xchg si, bx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovno rdx, qword ptr [r14 + rsi] 
lfence
btc rax, rbx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
