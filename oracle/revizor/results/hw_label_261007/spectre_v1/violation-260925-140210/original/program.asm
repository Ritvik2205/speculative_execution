.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax] 
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax] 
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl 
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi] 
adc cl, cl 
loopne .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69 
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax] 
test rax, -1704969603 
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx 
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi 
add cl, 97 # instrumentation
adc di, bx 
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx] 
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx 
sub sil, -55 
cmovo ebx, esi 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
