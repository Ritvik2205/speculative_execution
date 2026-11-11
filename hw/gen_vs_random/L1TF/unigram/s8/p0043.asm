.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
adc bl, -14
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], eax
and dil, al
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 79
or al, cl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
btc eax, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rcx
xchg edx, ebx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
imul si, di
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sub dl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
