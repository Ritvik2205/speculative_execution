.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -15 # instrumentation
cmovl rbx, rsi 
and rcx, 0b1111111111111 # instrumentation
lfence
sbb bx, word ptr [r14 + rcx] 
cmp dx, cx 
and rax, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rax], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
lfence
idiv dword ptr [r14 + rax] 
add si, ax 
and rsi, 0b1111111111111 # instrumentation
lfence
or cl, byte ptr [r14 + rsi] 
jmp .bb_0.1 
.bb_0.1:
mov dl, dl 
test rsi, rax 
and rcx, 0b1111111111111 # instrumentation
lfence
imul word ptr [r14 + rcx] 
adc edi, 122 
cmp dil, dl 
and rbx, 0b1111111111111 # instrumentation
lfence
movzx rbx, word ptr [r14 + rbx] 
and rbx, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rbx], -20 
and bl, 125 
and rdx, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rdx], rbx 
and rsi, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rsi], edx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
