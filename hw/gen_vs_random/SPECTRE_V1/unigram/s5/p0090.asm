.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
or sil, al
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 38
add al, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
lea di, qword ptr [rdi + rdi]
sub dil, -32
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 91
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
add cl, 83 # instrumentation
setbe bl
cmovo rbx, rbx
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
