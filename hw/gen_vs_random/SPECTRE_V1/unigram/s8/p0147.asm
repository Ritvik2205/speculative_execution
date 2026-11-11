.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
adc bx, bx
cmovl cx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 81
setno bl
test bx, ax
cmovz edx, edi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rsi, rcx
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
add sil, al
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
