.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
mov bl, al
bt rbx, 56
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
add dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
mov sil, sil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 24
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
cwd
or di, 0b1000000000000000 # instrumentation
bsr bx, di
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
xor dx, 30
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
