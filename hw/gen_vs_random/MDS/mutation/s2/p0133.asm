.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rsi, 70
not al
btc bx, 179
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and cl, -101
cmovnbe dx, si
xor al, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and dl, -7
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovnle rcx, rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
or rax, -2043376621
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
btc rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
