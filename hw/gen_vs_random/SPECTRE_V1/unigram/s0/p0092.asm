.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rax, rcx
cmovno dx, si
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -46 # instrumentation
cmovbe rax, rdi
bts rsi, 21
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
mov al, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
cmovle edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
