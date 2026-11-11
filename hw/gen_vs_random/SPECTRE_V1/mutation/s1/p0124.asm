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
sbb rax, -148104813
bt si, bx
cwde
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rcx + rcx + 40728]
cmp dil, 11
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovno rbx, rax
sbb al, -61
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
