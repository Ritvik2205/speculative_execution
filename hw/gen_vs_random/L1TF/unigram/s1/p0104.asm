.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi]
xchg sil, cl
lea di, qword ptr [rdi + rbx + 8]
lea dx, qword ptr [rbx]
not dl
sub al, 28
add bl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
sub dil, 95
neg rdi
lea dx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
xor bl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
