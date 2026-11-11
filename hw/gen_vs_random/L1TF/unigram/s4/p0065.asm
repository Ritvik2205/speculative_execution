.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -7
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and dl, al
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
xchg rax, rdi
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovno rbx, rsi
setb cl
xor ax, 27703
add bl, 93 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 34
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 67
sbb dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
