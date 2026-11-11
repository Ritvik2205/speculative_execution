.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ax, si
cmp sil, -110
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
add al, 65 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
bt eax, 58
lea rdi, qword ptr [rdi + rcx]
add bl, 13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
cmp bl, bl
setnbe bl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
