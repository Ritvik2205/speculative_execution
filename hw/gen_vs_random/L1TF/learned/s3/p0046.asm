.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
xchg ecx, eax
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
add bl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
lea di, qword ptr [rcx]
cmovl cx, dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 59
adc ax, -8436
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
sub al, 88
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
add esi, 13
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
