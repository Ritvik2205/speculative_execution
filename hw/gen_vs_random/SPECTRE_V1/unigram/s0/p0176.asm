.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 23
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
cmovl eax, esi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 57
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 77
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
dec rdi
add cl, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
add al, 40 # instrumentation
lea ax, qword ptr [rdx + rdx]
add sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
