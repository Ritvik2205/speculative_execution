.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
add rax, 1503210561
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
xchg rax, rax
lea rsi, qword ptr [rcx + rax]
cmp rsi, rdi
add sil, 36
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
