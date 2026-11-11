.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
or dx, 1 # instrumentation
dec rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
bt ecx, 1
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and ax, 37
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
sbb eax, -1165635662
dec edx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
not sil
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
