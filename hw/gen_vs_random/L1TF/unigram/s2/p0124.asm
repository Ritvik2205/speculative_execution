.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
add dl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
lea rbx, qword ptr [rdi + rdx + 29]
imul di, si
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
cmovl rsi, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
add al, 64 # instrumentation
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sbb rcx, 42
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
add bl, 76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
xor edx, 101
btr edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
