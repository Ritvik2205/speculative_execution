.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
btr ebx, esi
or al, dil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or rcx, -17
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, cl
and al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 35
jmp .bb_0.2
.bb_0.2:
or al, -17
xor rax, -1128378406
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
