.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rsi
imul edx
lea rdi, qword ptr [rbx + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sbb bl, -88
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
xor esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
cmp dl, -56
imul rdx, rax, 74
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
