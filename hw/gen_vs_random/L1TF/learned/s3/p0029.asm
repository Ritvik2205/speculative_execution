.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
inc ax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
adc dl, bl
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
sub ax, 19828
add bl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
add cl, 22 # instrumentation
cmovns rbx, rcx
lea rdi, qword ptr [rsi + rdi + 68]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 75
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
add cl, -82 # instrumentation
sbb si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
