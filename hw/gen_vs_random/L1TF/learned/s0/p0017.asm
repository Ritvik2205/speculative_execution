.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 24
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setp bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
lea edi, qword ptr [rcx + rsi]
or sil, al
btc dx, 98
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
