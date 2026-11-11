.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
xor rdi, -80
neg bl
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
test rdi, rbx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
