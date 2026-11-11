.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, 1469613902
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
add bl, bl
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmp rdi, rsi
adc rsi, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
btc bx, dx
setnle dl
cmp di, -98
add cl, -38 # instrumentation
setbe al
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
