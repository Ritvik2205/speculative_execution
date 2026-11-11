.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 17
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
add cl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 71
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
lea esi, qword ptr [rdi + rdi + 16]
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
add al, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
sub rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
cmp di, 88
lea rax, qword ptr [rcx + rsi + 33]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
