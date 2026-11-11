.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
not al
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
jmp .bb_0.1
.bb_0.1:
xor dl, dil
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
btc si, 43
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
not sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
not dl
and dl, -73
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
