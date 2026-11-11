.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
btc esi, esi
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
sub rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovb edx, edx
movzx cx, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
adc si, di
cmp bl, bl
btc dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
