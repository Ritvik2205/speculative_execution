.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
btr edx, ecx
test dil, -80
or al, 30
or al, dl
xor al, bl
jmp .bb_0.1
.bb_0.1:
or rax, -1561934807
test ax, 6779
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and ax, -4410
and dl, -73
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
