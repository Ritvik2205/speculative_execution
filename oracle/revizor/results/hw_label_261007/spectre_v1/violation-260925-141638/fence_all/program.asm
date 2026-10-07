.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 98 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle ecx, dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov ax, word ptr [r14 + rdi] 
lfence
lea ecx, qword ptr [rbx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rcx], bl 
lfence
js .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, -52 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs ecx, dword ptr [r14 + rsi] 
lfence
cmovno esi, edi 
lfence
lea rcx, qword ptr [rdi + rdx + 42602] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovno ecx, dword ptr [r14 + rdi] 
lfence
cmovl edi, ebx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
imul word ptr [r14 + rax] 
lfence
lea edi, qword ptr [rbx + rdi + 43315] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sbb dword ptr [r14 + rbx], -30 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sub ebx, dword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rsi], rcx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rdx] 
lfence
add bl, 106 # instrumentation
lfence
cmovs eax, esi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
