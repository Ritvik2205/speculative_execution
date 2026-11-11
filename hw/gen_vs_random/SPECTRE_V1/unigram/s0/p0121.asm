.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
cmovs rdx, rdx
add dl, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 83
imul rdx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
cmovno rdi, rsi
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
setno dil
dec rsi
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], 5
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
