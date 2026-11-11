.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
and rdi, 85
or dl, -8
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 88
cmovbe ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
xor sil, -15
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
cmovb rbx, rbx
xor sil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
cmovb di, cx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 5
test cl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
