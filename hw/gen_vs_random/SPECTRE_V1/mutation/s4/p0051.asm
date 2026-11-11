.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 112 # instrumentation
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
sub ax, -17837
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
lea si, qword ptr [rsi + rdi]
imul rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
adc esi, -39
add bl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, -98
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
