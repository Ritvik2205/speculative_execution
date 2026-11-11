.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
imul dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
setnb dl
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmovl rbx, rdi
adc sil, dl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 72
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 38
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sub rsi, 13
or al, -57
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
test cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
