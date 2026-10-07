.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lfence
lock neg byte ptr [r14 + rbx] 
lfence
sub rax, 1451608022 
lfence
imul dil 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc dword ptr [r14 + rax], edx 
lfence
imul ax, bx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc bx, word ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and edx, 0b111 # instrumentation
lfence
lock btr dword ptr [r14 + rcx], edx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb ax, word ptr [r14 + rax] 
lfence
jnle .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, -15 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx rbx, word ptr [r14 + rax] 
lfence
setno dil 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rsi], 22 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmp al, byte ptr [r14 + rdi] 
lfence
cmovp edi, eax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovno bx, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rsi], -58 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
