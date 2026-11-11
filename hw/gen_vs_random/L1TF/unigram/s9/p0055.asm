.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
cmp al, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 64
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
sbb edx, 23
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 54
movsx eax, dl
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 93
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
cmp ebx, 51
add cl, 39 # instrumentation
setle sil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
