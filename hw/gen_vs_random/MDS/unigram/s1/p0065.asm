.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, 138
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and bx, cx
cmovnbe cx, di
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and sil, 122 # instrumentation
cmovnb rsi, rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and dl, -1 # instrumentation
cmovnb si, di
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
or sil, sil
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and dl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rcx, 32
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and dl, -73 # instrumentation
cmovns rdx, rcx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
