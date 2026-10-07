.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
xor cx, word ptr [r14 + rsi] 
lfence
or dl, bl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
bts word ptr [r14 + rbx], 7 
lfence
or edx, eax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and bx, 0b111 # instrumentation
lfence
btc word ptr [r14 + rsi], bx 
lfence
lea ebx, qword ptr [rbx] 
lfence
sub eax, -911655926 
lfence
jmp .bb_0.1 
.bb_0.1:
test rax, 1469613902 
lfence
lea rdx, qword ptr [rcx + rdx + 44106] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rdi], 46 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
add rdi, qword ptr [r14 + rax] 
lfence
or rdi, rcx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rcx] 
lfence
or al, dl 
lfence
and ecx, -38 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
