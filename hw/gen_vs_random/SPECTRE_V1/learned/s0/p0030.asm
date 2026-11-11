.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
add ax, -16969
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
lea rcx, qword ptr [rsi + rcx + 49]
cmp edx, edi
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 33
lea edx, qword ptr [rbx + rax + 25]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
sbb rcx, 98
lea ebx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
