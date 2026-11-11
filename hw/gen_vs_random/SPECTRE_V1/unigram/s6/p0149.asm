.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 45
cmovno di, ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
xor bl, -38
cmovnz si, dx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and al, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
not bx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and si, 7
add bl, -95
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
