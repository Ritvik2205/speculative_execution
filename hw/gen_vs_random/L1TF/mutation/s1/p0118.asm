.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
add cl, 72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
inc rax
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
mov dl, -36
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
mov ecx, edx
xor bl, dl
adc rax, 41513450
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
sub edx, ebx
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
