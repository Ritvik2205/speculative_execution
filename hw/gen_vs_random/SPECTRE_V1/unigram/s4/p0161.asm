.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz sil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
add bl, 26 # instrumentation
sbb dl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
adc dl, dil
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
add dl, 35 # instrumentation
cmovnz rsi, rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
xor dl, 33
and dil, dil
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
