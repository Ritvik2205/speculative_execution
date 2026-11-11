.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
lea rax, qword ptr [rax + rcx]
cmovnz rax, rdx
test ecx, esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
cmp ebx, 28
xor sil, dl
imul rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov al, al
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 16
xor bl, 38
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
