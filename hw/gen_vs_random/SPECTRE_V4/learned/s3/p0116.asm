.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 94
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
cmp al, dl
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
or edi, 14
mov rax, -8696242625349627833
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
add rdx, rdi
xchg rcx, rax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
cmovbe si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
