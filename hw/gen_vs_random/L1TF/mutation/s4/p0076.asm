.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xchg dx, bx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
setnp cl
add al, 31
dec cl
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
lea rsi, qword ptr [rcx + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
sbb eax, eax
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -12
jmp .bb_0.1
.bb_0.1:
xor al, -127
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
cmp dl, al
movzx ebx, dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
sub dil, 95
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
bt rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
