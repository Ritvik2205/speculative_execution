.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
test sil, 13
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
bt eax, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 98
mul cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
xor al, 77
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
or dl, bl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or al, -8
test sil, 10
and al, -56
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
