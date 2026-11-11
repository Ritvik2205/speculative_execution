.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
sub rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
dec rax
add bl, -42 # instrumentation
lea bx, qword ptr [rcx + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
cmp al, sil
test rdx, rax
lea di, qword ptr [rcx]
setns cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
neg rax
imul edx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
