.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], ecx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
adc al, dl
cmovnp ecx, eax
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
lea si, qword ptr [rsi + rax]
sbb ax, -26133
bswap rax
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rbx + 63]
xor edi, 48
add cl, -38 # instrumentation
setbe cl
test ax, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
