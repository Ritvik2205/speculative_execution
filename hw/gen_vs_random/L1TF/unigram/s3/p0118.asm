.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 40
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 9
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
mov ax, 58
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and ebx, edx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
sbb al, dil
lea rdx, qword ptr [rsi + rax + 43]
lea esi, qword ptr [rdi + rax]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
xchg ax, bx
lea ebx, qword ptr [rdi + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
