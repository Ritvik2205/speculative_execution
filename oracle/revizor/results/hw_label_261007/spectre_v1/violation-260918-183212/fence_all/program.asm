.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sub bx, word ptr [r14 + rcx] 
lfence
imul bl 
lfence
add dl, -42 # instrumentation
lfence
lea edi, qword ptr [rdx] 
lfence
lea rcx, qword ptr [rdx] 
lfence
cmovnbe rbx, rsi 
lfence
xor rsi, -124 
lfence
bts rsi, 234 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
and ebx, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rdx], ebx 
lfence
jb .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, 7 # instrumentation
lfence
cmovnl esi, ecx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
sbb rdi, qword ptr [r14 + rcx] 
lfence
lea cx, qword ptr [rdi + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp byte ptr [r14 + rcx], bl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rdx], al 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sub dword ptr [r14 + rcx], 11 
lfence
test ax, ax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
