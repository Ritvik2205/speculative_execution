.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
add bl, 70
movsx rsi, dx
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
not di
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 99
and rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
