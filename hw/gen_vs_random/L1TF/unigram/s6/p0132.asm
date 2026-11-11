.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and al, -68
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
add al, -1 # instrumentation
nop
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 34
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 42
cmp al, al
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
imul ebx, ebx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
