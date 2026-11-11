.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
cmp ecx, 40
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
mov rdi, 41
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
add cl, 112 # instrumentation
sbb ecx, 70
bt ecx, 204
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
cmovnp si, ax
add cl, -127
not rcx
imul rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
