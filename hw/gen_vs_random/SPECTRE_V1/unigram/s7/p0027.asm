.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
mul cx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
mov cl, -72
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
add dl, 52 # instrumentation
sets al
add cl, -46 # instrumentation
cmovbe rcx, rdx
adc al, -82
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
adc rcx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
