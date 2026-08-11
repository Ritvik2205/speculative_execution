.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78 
sbb bl, 79 
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9 
sub rcx, rsi 
lea di, qword ptr [rax] 
jnb .bb_0.1 
jmp .exit_0 
.bb_0.1:
add cl, 44 # instrumentation
cmovz edi, edx 
not ax 
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi] 
xor cl, 78 
sbb al, al 
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx] 
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106 
bt rcx, rdx 
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx] 
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
