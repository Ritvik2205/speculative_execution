.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
lea esi, qword ptr [rdi + rdi + 58]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
cmp ebx, 32
lea bx, qword ptr [rax + rdx + 24839]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and al, -68
and al, sil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
xor bx, 84
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 99
add cl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
