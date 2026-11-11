.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
add cl, -127
lea rdx, qword ptr [rdx + rcx]
btr bx, 193
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 22
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
inc rdx
btr di, 16
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
