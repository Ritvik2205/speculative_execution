.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, 2
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
sets sil
xor ebx, -81
sub rbx, 68
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
cmovnb eax, edx
imul rcx
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 24
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
setnb al
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
