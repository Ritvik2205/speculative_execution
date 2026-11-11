.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
cmp cl, cl
test sil, -101
dec bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rsi, 64
inc si
bts rdi, rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
setns sil
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
bt esi, 33
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33
lea ax, qword ptr [rdx + rcx + 40]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
