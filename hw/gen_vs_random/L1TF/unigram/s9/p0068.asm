.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 40
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 11
cmovs di, si
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 61
or dil, -113
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
or esi, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
lea rbx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
add al, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
or cl, 105
btr edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
