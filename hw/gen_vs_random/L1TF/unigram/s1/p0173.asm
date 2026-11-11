.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -102
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
add sil, -61
sub dil, al
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
btc edi, 12
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
xor sil, dil
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
mov dl, -36
xor rdi, rbx
add dl, -93 # instrumentation
cmovb rdi, rdx
cmovnb di, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
