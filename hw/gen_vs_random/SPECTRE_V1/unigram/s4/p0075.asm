.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dil
and rdi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdi]
adc rcx, 4
cmp sil, bl
add cl, 90 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
add cl, 73 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bts rax, 140
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
add sil, 28 # instrumentation
setnz sil
mov cl, cl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
