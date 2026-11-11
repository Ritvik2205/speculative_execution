.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
add dl, dil
or edi, 18
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
sub al, 50
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 12
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
bt edi, 25
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
or edi, 50
add di, -74
movsx rsi, al
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
