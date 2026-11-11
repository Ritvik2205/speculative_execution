.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 14
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
neg cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
dec edx
adc ax, di
movsx eax, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rcx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
add al, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
movsx dx, cl
btc edi, 45
btr dx, ax
cbw
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
