.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
add sil, cl
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
cmp dl, 119
neg al
cmovbe cx, ax
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
lea eax, qword ptr [rax + rdi]
add al, 21 # instrumentation
adc ax, 32514
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
add dil, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
test dl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
