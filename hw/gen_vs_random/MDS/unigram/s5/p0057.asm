.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
bt rdx, rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], ax
btc esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
bt si, 23
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
test bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
bt edx, ebx
cmovs rax, rbx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
