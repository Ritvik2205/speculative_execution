.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, bx
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
adc dl, 87
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
sbb esi, 34
mov cl, 47
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
sub cx, 100
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
and cl, 46
btr ecx, eax
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
