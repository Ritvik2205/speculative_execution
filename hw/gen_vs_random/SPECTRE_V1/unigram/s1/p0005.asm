.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 2
add cl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 70
add al, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
imul bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cx, di
cmp dx, 12
add dl, 92 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
btr esi, 22
add dl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
cmp sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
