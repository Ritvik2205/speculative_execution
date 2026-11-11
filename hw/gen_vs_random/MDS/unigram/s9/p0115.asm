.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
test sil, cl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 72
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
cmovp esi, edx
test dl, -85
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
xor dil, dl
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
and cl, 126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
bt rdx, 57
and dl, 68 # instrumentation
cmovns cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
