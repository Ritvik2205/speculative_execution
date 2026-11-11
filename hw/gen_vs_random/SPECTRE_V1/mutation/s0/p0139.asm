.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, di
mov cx, -13260
dec rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add dl, al
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp edx, ecx
imul rbx
btr bx, 144
sub cl, dl
setp dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
lea bx, qword ptr [rbx + rsi]
movsx si, cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
cmovle dx, dx
sub al, -82
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
setnb cl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
lea di, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
