.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
btr eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edx
or sil, -44
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 9
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
test ax, di
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
