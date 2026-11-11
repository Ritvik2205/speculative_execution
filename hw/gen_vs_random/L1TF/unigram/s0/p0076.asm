.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
sbb cx, 16
lea cx, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
xor dl, al
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xchg al, dl
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc cl, bl
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
setb al
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
