.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
add bl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
btr eax, 253
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
dec rbx
mov bl, bl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 40
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and bl, cl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rax
mov al, sil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
sbb rax, -148104813
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
