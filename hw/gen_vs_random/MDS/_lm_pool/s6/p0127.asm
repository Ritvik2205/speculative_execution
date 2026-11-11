.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 99
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
bt bx, ax
test ecx, -1843375753
and eax, 461212071
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and ax, 31082
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
or dil, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
