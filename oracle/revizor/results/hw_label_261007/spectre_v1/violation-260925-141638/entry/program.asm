.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
add al, 98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi] 
lea ecx, qword ptr [rbx] 
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl 
js .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi] 
cmovno esi, edi 
lea rcx, qword ptr [rdi + rdx + 42602] 
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi] 
cmovl edi, ebx 
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax] 
lea edi, qword ptr [rbx + rdi + 43315] 
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], -30 
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi] 
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx 
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx] 
add bl, 106 # instrumentation
cmovs eax, esi 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
