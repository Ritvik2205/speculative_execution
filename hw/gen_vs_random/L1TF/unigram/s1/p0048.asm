.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ebx, ebx
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rcx
cmovo cx, di
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 68
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 92
lea eax, qword ptr [rcx + rax]
jmp .bb_0.1
.bb_0.1:
cmp bl, 123
adc bl, sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
