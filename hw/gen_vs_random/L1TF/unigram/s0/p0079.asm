.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
sbb rdx, 98
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
adc al, dl
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
dec edi
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmovnp bx, dx
btr edi, 31
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
lea eax, qword ptr [rdi + rdi + 56]
add cx, 80
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
test di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
