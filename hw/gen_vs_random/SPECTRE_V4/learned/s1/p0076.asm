.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and dl, bl
sbb dl, bl
movzx cx, al
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
adc al, -58
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 19
add rcx, rdi
or rax, 31
adc rdx, rbx
xor dl, bl
xor eax, -437098167
xor al, 29
cmovbe dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
cmovnle rdi, rbx
or rax, 27
and al, -36
and rcx, -102
and bl, sil
add bx, 110
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
cmp dx, bx
adc dl, dl
cmovb di, di
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and sil, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 16
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
bts esi, 241
or bx, dx
adc rbx, 97
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
cmp bl, bl
cmp ax, 23131
cmp dl, cl
sub dl, dl
cmp cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
