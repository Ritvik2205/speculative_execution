.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
cmp dil, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
jmp .bb_0.1
.bb_0.1:
setnl dl
mov dl, al
add edi, edx
and bl, -73
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
lea edx, qword ptr [rax + rsi + 96]
or rax, -357903210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
