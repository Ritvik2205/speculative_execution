.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
sbb dil, 35
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 5
mov ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
cmovnb rdx, rsi
add al, -84 # instrumentation
setno cl
jmp .bb_0.1
.bb_0.1:
cmovno rdx, rax
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
setp dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
