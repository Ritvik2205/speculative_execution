.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
bswap ebx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
bswap rax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
cmovp di, dx
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
mov al, dl
jmp .bb_0.1
.bb_0.1:
add dl, 82 # instrumentation
adc dl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 89
lea bx, qword ptr [rcx + rbx + 61]
and rsi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rsi]
add bl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
inc rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
