.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
adc dil, dil
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
xor al, dl
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add bl, 79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
test edx, 1891691791
xchg eax, esi
movzx edx, bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 9
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
cmovs di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
