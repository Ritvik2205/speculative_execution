.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sub dil, -70
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
lea dx, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
add cl, 44 # instrumentation
cmovns si, ax
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dl, 73
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and di, si
cmovno di, ax
add ax, 116
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
