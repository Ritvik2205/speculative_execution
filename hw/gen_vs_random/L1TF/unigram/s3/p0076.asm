.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add cl, cl
mov bx, di
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 70
mov di, 66
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
imul edx
add dl, -108 # instrumentation
cmovnle edx, edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
and sil, cl
xor rax, -2072052278
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
add al, 24 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
