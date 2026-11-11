.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
cmovbe rdx, rax
cwde
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
setno al
xchg al, al
cbw
or al, bl
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 76
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
add dil, -42 # instrumentation
lea ecx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 91
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 2
xor al, al
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
