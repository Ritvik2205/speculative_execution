.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, -93
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
btr ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 48
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
cmovl rsi, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
cmovns eax, eax
jmp .bb_0.1
.bb_0.1:
inc bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 97
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
imul rdi, rax, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
