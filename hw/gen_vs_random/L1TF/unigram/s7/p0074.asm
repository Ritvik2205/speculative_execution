.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
add bl, 79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
add dl, 126 # instrumentation
setnb bl
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
test rax, -1576813424
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
add dl, 47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
