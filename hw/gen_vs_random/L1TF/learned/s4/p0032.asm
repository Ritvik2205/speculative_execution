.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
lea eax, qword ptr [rdi + rdi + 60]
and cx, 127
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and cx, 127
and dl, bl
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
cmovnle rsi, rbx
jmp .bb_0.1
.bb_0.1:
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 12
or eax, 287965578
adc al, -61
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
