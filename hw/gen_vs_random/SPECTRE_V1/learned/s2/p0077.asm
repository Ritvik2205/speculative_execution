.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
test cl, -31
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
xor bx, ax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 54
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, di
cmovnl ebx, ecx
cmovz di, dx
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
