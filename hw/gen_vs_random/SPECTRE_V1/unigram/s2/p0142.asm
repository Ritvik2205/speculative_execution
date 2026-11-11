.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz sil
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
sub al, bl
neg rax
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
lea rcx, qword ptr [rsi + rax + 28]
cmovnb si, si
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mul cl
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
add cl, 112 # instrumentation
movzx edi, bl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 53
btr rcx, rax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 19
lea cx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
