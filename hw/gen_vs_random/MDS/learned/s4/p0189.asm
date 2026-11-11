.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
bt di, ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
and dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
or ax, 127
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or al, al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 6
btc ax, 62
or al, -78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
