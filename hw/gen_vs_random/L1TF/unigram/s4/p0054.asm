.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dil
xor al, 16
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
btc rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 46
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
add dl, 127 # instrumentation
setnbe bl
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
setle al
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
xchg edi, esi
cmovns cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
