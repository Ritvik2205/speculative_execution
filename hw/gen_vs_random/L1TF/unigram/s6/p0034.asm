.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
or sil, -44
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
inc rbx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
lea dx, qword ptr [rcx + rdi + 88]
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 17
lea dx, qword ptr [rax + rdi]
btr bx, dx
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and cl, bl
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
