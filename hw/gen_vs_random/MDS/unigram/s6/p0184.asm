.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor cl, 24
and bx, 2
or cl, sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and edi, 23
not al
cmovnbe edi, edx
and dl, dl
bt rcx, rcx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
bt cx, 22
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rax
btc di, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or sil, -49
or edi, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
