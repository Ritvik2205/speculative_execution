.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
or ebx, esi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 88
btr rbx, rax
lea rdi, qword ptr [rdi + rax + 98]
jmp .bb_0.1
.bb_0.1:
cmovno eax, eax
mov sil, dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
