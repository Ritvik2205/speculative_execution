.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rcx, rsi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 47
lea dx, qword ptr [rbx + rsi + 73]
add di, 87
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
setnz dl
and rsi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 14
add dl, -53 # instrumentation
lea rax, qword ptr [rsi + rdi + 46]
or dl, al
adc esi, esi
or al, -57
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
xchg dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
