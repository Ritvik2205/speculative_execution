.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
cmovnbe edi, edx
btc edi, edi
lea edi, qword ptr [rbx]
cmovns edi, edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
cmovb ebx, ecx
lea di, qword ptr [rax]
mov si, bx
cwd
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
