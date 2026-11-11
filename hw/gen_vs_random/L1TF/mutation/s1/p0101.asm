.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
sub dil, -39
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
add cl, 44 # instrumentation
cmovns si, ax
lea dx, qword ptr [rdi]
lea rdx, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
and dl, 32
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and di, si
cmovno di, ax
add ax, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
