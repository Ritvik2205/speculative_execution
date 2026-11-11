.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 10
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and al, -111
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
xchg cl, al
lea ebx, qword ptr [rbx + rcx + 44]
cmp ax, di
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
add sil, -104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
