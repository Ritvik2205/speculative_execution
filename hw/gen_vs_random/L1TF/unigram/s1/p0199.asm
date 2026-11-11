.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -21 # instrumentation
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
add bl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
or al, bl
sub ax, -12040
add dil, 126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rsi]
adc rsi, 56
add dx, -51
and bl, 125
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
