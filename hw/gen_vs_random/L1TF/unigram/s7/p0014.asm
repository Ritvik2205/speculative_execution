.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 46
add dil, -71 # instrumentation
adc edi, edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], si
lea cx, qword ptr [rcx]
cmovnle rsi, rsi
sub bl, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
mov cl, al
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
xor al, bl
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
add cl, 40 # instrumentation
cmovbe ax, cx
not eax
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
