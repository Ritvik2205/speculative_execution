.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
sbb bx, 9
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmp cx, 32
xor edx, 101
btc ebx, edx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 76
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
add dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
setbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
