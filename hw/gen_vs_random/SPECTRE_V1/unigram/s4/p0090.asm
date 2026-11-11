.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
xchg di, dx
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
add cl, 97 # instrumentation
adc dx, cx
add esi, edx
adc sil, dil
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
not rbx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
add al, bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
