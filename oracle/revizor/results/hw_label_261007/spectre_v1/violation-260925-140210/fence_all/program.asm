.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lfence
imul cx, word ptr [r14 + rax] 
lfence
add dl, -105 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnl rax, qword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdi], dl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
setbe byte ptr [r14 + rdi] 
lfence
adc cl, cl 
lfence
loopne .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
lfence
add qword ptr [r14 + rax], 69 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock neg byte ptr [r14 + rax] 
lfence
test rax, -1704969603 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rsi], rdx 
lfence
or esi, 0b1000 # instrumentation
lfence
and sil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv esi 
lfence
add cl, 97 # instrumentation
lfence
adc di, bx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
movsx esi, byte ptr [r14 + rbx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdi], edx 
lfence
sub sil, -55 
lfence
cmovo ebx, esi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
