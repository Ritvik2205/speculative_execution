.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
test al, 34
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 75
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
lea ebx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
cmp dl, -115
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
imul eax
inc rcx
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
cmp cl, bl
mul cx
add dl, -120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
