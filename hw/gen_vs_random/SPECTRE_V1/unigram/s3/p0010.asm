.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
btr esi, ecx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 44
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
add al, 9 # instrumentation
adc al, dl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
add bl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
not rdi
add dl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
