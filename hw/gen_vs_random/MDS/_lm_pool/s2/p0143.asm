.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and bl, 68
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
xor al, sil
not bl
or al, -58
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and sil, dil
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or cl, sil
and dil, al
or sil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
jmp .bb_0.2
.bb_0.2:
test eax, 343548072
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
