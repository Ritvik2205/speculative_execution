.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
add al, dl
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
mov al, dl
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add cl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
or sil, sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rsi
add dl, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
