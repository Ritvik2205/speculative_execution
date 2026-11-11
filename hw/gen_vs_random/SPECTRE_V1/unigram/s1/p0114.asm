.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
cmp ebx, -33
neg rsi
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
test bx, 50
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 1
add bx, ax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
xor dl, dil
cmovs ax, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
