.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
setbe dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
jmp .bb_0.1
.bb_0.1:
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmp dl, 64
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rsi]
xor bl, -116
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], -45
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xchg dl, cl
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
inc cx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
