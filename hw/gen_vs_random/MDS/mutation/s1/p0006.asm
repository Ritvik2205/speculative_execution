.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and al, dl
btc rbx, rax
cmovnbe dx, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
xor al, cl
cmovnle rcx, rax
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
or rax, -285849275
and dl, -7
and cl, -63
btc bx, 179
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
not al
and rsi, 70
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
