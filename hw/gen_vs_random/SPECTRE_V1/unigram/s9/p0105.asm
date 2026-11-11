.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 14
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
add cl, -23 # instrumentation
cmovl ax, dx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
movzx edi, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 28
bt edi, 134
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
imul ecx, eax
add cx, -103
add al, 40 # instrumentation
btc rax, rax
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
