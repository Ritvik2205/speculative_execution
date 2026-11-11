.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
neg rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
btr cx, bx
setns dl
cmp cl, 3
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 23
movsx di, bl
dec rbx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 88
adc ax, -26452
cmovnle rsi, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
