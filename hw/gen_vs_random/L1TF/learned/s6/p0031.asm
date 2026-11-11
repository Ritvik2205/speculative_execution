.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
or rdx, 11
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmp ax, -31327
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
