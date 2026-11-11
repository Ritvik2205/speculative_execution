.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
sbb dl, 127
sub bl, cl
bts di, di
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
movzx eax, si
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
add cl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
add cl, 103 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
