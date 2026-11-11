.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 68
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
add dl, -47 # instrumentation
sbb al, 73
movzx dx, dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
mul cl
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
add sil, 103 # instrumentation
cmovno edx, esi
lea rdx, qword ptr [rax + rax + 62]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 77
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
bts ax, 67
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
add bl, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
