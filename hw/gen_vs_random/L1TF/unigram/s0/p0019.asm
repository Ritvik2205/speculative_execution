.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 16
sbb bx, cx
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
lea eax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
mov ax, dx
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
adc ax, -8436
sub dil, 95
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
btc si, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
