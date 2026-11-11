.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 99
or di, 0b1000000000000000 # instrumentation
bsr ax, di
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 69
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 11
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
add al, -33 # instrumentation
cmovnl ax, si
adc si, cx
and di, dx
add al, 108 # instrumentation
setl al
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
lea esi, qword ptr [rsi + rax]
or eax, edi
mov edx, edi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
