.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 75 # instrumentation
sbb dl, bl
xchg dl, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
or al, bl
add al, cl
test dil, -107
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 63 # instrumentation
cmovle cx, ax
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
dec esi
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
xor ax, 17976
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40
mov cl, -98
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
or sil, 3
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
imul edi, ebx
bt bx, 27
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
