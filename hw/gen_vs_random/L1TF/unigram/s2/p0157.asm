.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ecx, edi
cmp esi, -52
lea edx, qword ptr [rdi + rdx + 38]
bts rdx, rcx
imul rcx, rcx, 17
and rdi, 90
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
xchg rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
sub al, 9
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdi
dec dil
bts rbx, rax
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add al, 121 # instrumentation
setnb cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
