.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
xchg rdx, rdi
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
add al, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
xor rdx, 122
jmp .bb_0.1
.bb_0.1:
add ebx, 2
adc bx, 61
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovnp edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
