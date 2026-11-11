.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
adc ax, di
setno dl
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xchg edi, eax
bt eax, 127
lea rdx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
sbb rax, 1380680934
bt si, bx
cwde
jmp .bb_0.2
.bb_0.2:
add cl, -29 # instrumentation
lea rax, qword ptr [rdx + rdx + 58362]
xchg rcx, rcx
cmovbe rcx, rdi
add sil, 36
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or sil, -27
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
