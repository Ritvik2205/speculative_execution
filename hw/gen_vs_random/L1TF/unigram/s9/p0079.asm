.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and cl, 80
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and cl, sil
add cx, 94
sub dl, bl
sbb cx, ax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 14
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 39 # instrumentation
setle bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
