.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
xor bl, cl
and cl, cl
or dil, -76
not sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and di, 91
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
bt cx, di
or al, 54
or sil, bl
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
xor ax, 31969
xor dil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
