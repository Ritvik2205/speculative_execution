.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 84
cmovl rcx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 32
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 35
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
bt di, di
not al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
