.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
add bl, 112 # instrumentation
setnbe cl
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], di
or bl, 3
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
lea rdx, qword ptr [rbx + rbx + 10]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setnle bl
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
add dil, 56 # instrumentation
cmovns eax, edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 20
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
