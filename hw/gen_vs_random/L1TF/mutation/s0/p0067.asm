.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
cmovb rdi, rsi
btr si, dx
setz bl
or al, cl
add cl, -110 # instrumentation
btr cx, 181
jmp .bb_0.1
.bb_0.1:
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
mov ebx, 675401645
cmovno rsi, rcx
lea rbx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
add dl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
