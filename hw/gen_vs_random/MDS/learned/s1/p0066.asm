.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 27
test al, 127
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
bt di, dx
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
xor dl, 8
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
test dil, -80
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
