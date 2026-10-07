.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
lfence
lea dx, qword ptr [rsi + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov al, byte ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
btc qword ptr [r14 + rdi], rdx 
lfence
jbe .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rsi] 
lfence
dec rdi 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rax], -112 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
dec byte ptr [r14 + rbx] 
lfence
mov bl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rcx], rsi 
lfence
lea edi, qword ptr [rcx + rbx] 
lfence
lea rdi, qword ptr [rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc dl, byte ptr [r14 + rdi] 
lfence
movzx bx, sil 
lfence
cmovns rsi, rsi 
lfence
xor rsi, 73 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
dec qword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
