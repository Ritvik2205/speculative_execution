.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
sbb rbx, 37
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
lea rdi, qword ptr [rcx + rdi]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 64
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
cmovb ecx, ebx
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
