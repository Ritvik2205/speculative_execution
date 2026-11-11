.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
cmp dx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 92
mov bl, 47
xor al, 59
jmp .bb_0.1
.bb_0.1:
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub al, 99
sub al, al
sbb al, -62
xor bx, si
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 4
cmovnz di, di
cmovo rdx, rax
cmovnl si, ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
adc dil, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
