.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
btc bx, 58
xor eax, 571592471
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
xor ax, -1005
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
xor dil, 81
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and ax, -4410
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or cl, 30
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
