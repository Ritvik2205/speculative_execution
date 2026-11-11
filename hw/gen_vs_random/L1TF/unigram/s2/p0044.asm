.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rax, rax
lea bx, qword ptr [rsi + rbx + 32]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
cmovns edi, ecx
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 50
add sil, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add bl, -87 # instrumentation
cmovnle rdi, rbx
or cl, 105
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
sub sil, -99
xchg rcx, rbx
cmovl di, di
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
add dl, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
