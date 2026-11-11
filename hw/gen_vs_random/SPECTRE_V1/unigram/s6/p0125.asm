.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 8
sub dl, 71
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
cmovle ax, bx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovno si, si
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
bswap ebx
lea ecx, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
