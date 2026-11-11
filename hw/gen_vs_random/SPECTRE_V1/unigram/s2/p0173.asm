.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 100
add bl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
mov dl, sil
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
btr esi, eax
or sil, 122
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 64
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
lea cx, qword ptr [rax + rdi]
sub dl, dil
lea di, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
