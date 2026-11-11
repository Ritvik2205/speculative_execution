.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
cwd
setnl dl
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and dl, -92
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and sil, 111
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
or ax, -114
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xor rax, 376589024
mul bl
jmp .bb_0.2
.bb_0.2:
add cl, 44 # instrumentation
cmovz edi, edx
not ax
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
xor cl, 78
sbb al, al
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
bt rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
