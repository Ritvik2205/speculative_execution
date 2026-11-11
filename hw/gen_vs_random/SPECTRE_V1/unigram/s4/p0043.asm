.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, bl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 92
cmp dl, 119
xor sil, -33
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
loope .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
cmovb ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ecx
add bl, 9 # instrumentation
adc bl, al
sub di, 2
sbb al, 49
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
