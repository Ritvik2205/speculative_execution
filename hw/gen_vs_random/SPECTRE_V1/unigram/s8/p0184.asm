.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
dec dil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add al, cl
setno dl
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
cmp sil, 25
bts si, 67
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
