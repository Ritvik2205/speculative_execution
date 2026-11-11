.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 123
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
test al, 15
xor dx, ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
add bl, -54 # instrumentation
setz al
bts eax, 232
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 98
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 49
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
