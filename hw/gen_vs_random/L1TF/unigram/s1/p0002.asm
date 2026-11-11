.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl dl
and rdx, rsi
and cl, sil
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
add dl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
adc rbx, 75
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx + rsi + 42]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmp bl, 89
inc dl
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
