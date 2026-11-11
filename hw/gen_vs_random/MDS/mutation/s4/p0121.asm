.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rax
and rsi, 70
and dl, -7
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
or rax, -2043376621
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
cmovnbe dx, si
btc bx, 179
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
xor al, cl
and al, dl
not al
and cl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
