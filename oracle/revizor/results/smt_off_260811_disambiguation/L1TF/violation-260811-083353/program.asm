.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi] 
adc dl, cl 
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx] 
cmovnb rdx, rdx 
sbb cl, bl 
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx 
mul bl 
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi] 
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx 
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx] 
xor edi, 48 
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi] 
not dl 
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx 
lea cx, qword ptr [rdx + rsi + 32229] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
