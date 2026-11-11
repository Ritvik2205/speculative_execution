.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 65
cmovo eax, ebx
mov cl, cl
cwd
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 93
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
setnz cl
movsx si, bl
lea ecx, qword ptr [rdx + rbx + 97]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
