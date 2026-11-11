.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and bl, dl
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
add cl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
sub al, 63
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edi
mul sil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
