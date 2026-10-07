.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rbx], -52 
lfence
mov edi, edx 
lfence
lea di, qword ptr [rdi + rdi + 8878] 
lfence
movsx ecx, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb sil, byte ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmp cl, byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc rbx, qword ptr [r14 + rdx] 
lfence
btc rdi, 243 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc dword ptr [r14 + rax], edx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub qword ptr [r14 + rdi], 77 
lfence
movzx cx, bl 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock not dword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor rcx, qword ptr [r14 + rbx] 
lfence
xor dil, 2 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rsi], bx 
lfence
sbb rcx, 42 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
