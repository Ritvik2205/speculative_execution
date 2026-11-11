.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 8031
add dl, -77 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add ax, 6980
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
cmovnle si, ax
cmp al, 77
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 33 # instrumentation
setnz dl
xchg di, dx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor rcx, rax
cmovnz bx, bx
movzx eax, dil
adc ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
