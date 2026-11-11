.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
xchg di, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
bt dx, 76
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
setnz dl
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
movsx bx, dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
cmovbe rdx, rsi
test bl, 49
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
add cl, 75 # instrumentation
sbb dl, dil
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
