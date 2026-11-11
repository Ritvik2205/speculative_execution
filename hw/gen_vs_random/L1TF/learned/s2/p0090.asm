.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, 1167476476
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmp al, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
lea edx, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rax + rcx]
cmovno ax, ax
add bl, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
mov bl, cl
cmovnbe dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
