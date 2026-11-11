.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
or cl, sil
not al
jmp .bb_0.1
.bb_0.1:
btc cx, si
xor al, dl
and edx, -44
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 37
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
xor bl, -61
and dl, dl
xor eax, -885380838
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
btc cx, 115
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
btr eax, edi
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
