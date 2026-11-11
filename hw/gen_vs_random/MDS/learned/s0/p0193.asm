.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
cmovnle edx, eax
and cl, -3 # instrumentation
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
or bl, 84
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 37
or ax, -4635
cmovs edi, esi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
cmovnz ax, si
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
adc cx, 58
adc al, 90
cmovnz edi, eax
or dl, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
