.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rcx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
add al, 54 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
or al, sil
add al, -33 # instrumentation
cmovnl ax, di
imul ax
jmp .bb_0.1
.bb_0.1:
sub ecx, 82
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 71
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
add sil, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
lea rsi, qword ptr [rsi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
