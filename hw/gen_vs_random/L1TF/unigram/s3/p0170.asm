.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
add dl, -53 # instrumentation
lea rbx, qword ptr [rcx + rax + 13]
btr eax, ecx
xor cl, 89
imul bx, ax
add bl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
lea dx, qword ptr [rdi + rax + 93]
jmp .bb_0.1
.bb_0.1:
add dl, bl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
add bl, 111 # instrumentation
cmovs rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
