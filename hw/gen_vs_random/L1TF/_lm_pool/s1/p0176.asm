.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
cmovb cx, bx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub di, 52
xor bl, sil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
lea dx, qword ptr [rsi + rdi + 47468]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
