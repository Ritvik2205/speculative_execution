.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
btr cx, dx
or bl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and bl, bl
test bl, cl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and al, dil
xor al, 55
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test bl, al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
