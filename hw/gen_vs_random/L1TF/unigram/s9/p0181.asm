.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 17
and edx, 79
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 71
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
or al, -2
not edi
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
bswap rcx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
btr edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
add bl, 39 # instrumentation
lea bx, qword ptr [rax]
and dl, dl
add al, -9 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
