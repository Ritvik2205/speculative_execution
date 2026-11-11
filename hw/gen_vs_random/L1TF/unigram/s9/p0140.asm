.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
mov bx, dx
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
sbb rdi, rdx
add al, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
xor bl, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
or al, dil
add dl, -78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
