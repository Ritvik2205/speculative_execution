.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
add cl, 30 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
lea rdx, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
cmovno ebx, ebx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 22
cmp eax, 951020724
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
xor cx, 113
adc sil, 25
add ax, -10746
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
