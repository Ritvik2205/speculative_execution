.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edi, ebx
and dl, al
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 27
test cl, 91
cmovnb rdi, rsi
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
xor cl, bl
jmp .bb_0.1
.bb_0.1:
and di, 99
cmovle ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or rbx, -77
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
xor rsi, -117
cmovnb ax, di
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
cmovo rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
