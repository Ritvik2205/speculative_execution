.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cl, cl
not dx
and rdx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 94
add bl, 107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 14
jmp .bb_0.1
.bb_0.1:
cmp edi, 3
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 97
cmovl rax, rcx
imul bl
mul rdi
movzx esi, dl
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
sbb rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
