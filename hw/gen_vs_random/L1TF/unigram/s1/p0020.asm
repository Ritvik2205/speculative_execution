.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -7 # instrumentation
cwd
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
add ecx, 25
or rcx, 62
bswap rdi
add al, -109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea ax, qword ptr [rdx + rax + 97]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
lea rcx, qword ptr [rdx + rdi + 19]
add dl, 10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 16
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
btc edi, 54
btr di, bx
setns al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
