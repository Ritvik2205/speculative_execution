.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
xor sil, dl
cmovs di, bx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
xor dl, 9
lea rcx, qword ptr [rdx]
setl al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
