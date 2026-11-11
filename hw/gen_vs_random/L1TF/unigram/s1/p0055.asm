.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rax]
test bl, 65
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
btc rbx, 24
mov rax, -6437636498926413678
xor dl, dl
add rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
imul dx, bx, 72
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
add dil, -74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
imul ax
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 78
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
movzx esi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
