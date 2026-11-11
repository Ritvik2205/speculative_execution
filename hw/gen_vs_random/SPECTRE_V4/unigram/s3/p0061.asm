.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe dx, si
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
sbb cl, 127
or cl, cl
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
mov si, dx
adc sil, sil
and rsi, rcx
and sil, -84
or edx, -118
add bl, -59
sub ecx, -107
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
mov bx, 27738
sbb bl, -75
or rcx, 62
sbb dl, -62
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub al, cl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
cmovo eax, edx
sbb rcx, -73
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
or dil, bl
adc ecx, 55
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
mov al, dl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
add dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 63
cmp edx, -95
mul rdi
movzx rcx, di
add rbx, rbx
test dl, dl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
cmp bl, -16
cmovp ecx, esi
mov eax, 522619143
adc al, 116
bts edx, 116
add bl, sil
sub al, dil
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
test bl, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
